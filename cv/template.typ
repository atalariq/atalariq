#let cv(
  author: "",
  author-position: center,
  personal-info-position: center,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  author-font-size: 20pt,
  font-size: 10pt,
  lang: "en",
  body,
) = {
  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: font-size,
    lang: lang,
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false,
  )

  // Recommended to have 0.5in margin on all sides
  set page(
    margin: 0.5in,
    paper: paper,
  )

  // Link styles
  show link: underline


  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: author-font-size,
    )
    #pad(it.body)
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        strong(prefix) + link(link-type + value)[#(value)]
      } else {
        strong(value)
      }
    }
  }

  // Personal Info
  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(location),
          contact-item(personal-site, link-type: "https://"),
          contact-item(linkedin, link-type: "https://"),
          contact-item(github, link-type: "https://"),
        )
        items.filter(x => x != none).join(strong(" | "))
      }
    ],
  )

  pad(
    top: -0.5em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(email, link-type: "mailto:", prefix: "Email: "),
          contact-item(phone, link-type: "https://", prefix: "Contact: "),
        )
        items.filter(x => x != none).join(strong(" | "))
      }
    ],
  )


  // Main body.
  set par(justify: true)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Cannot just use normal --- ligature because ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.em$ + " " + end-date
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
) = {
  if degree != "" {
    generic-two-by-two(
      top-left: [#strong(institution), #location],
      top-right: dates,
      bottom-left: degree,
      bottom-right: "",
    )
  } else {
    generic-one-by-two(
      left: [#strong(institution), #location],
      right: dates,
    )
  }
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(title),
    top-right: dates,
    bottom-left: company,
    bottom-right: emph(location),
  )
}

#let experience(
  name: "",
  dates: "",
  role: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: {
      if location != "" {
        [#strong(name), #location]
      } else {
        [#strong(name)]
      }
    },
    top-right: dates,
    bottom-left: role,
    bottom-right: "",
  )
}

#let project(
  role: "",
  name: "",
  dates: "",
) = {
  generic-two-by-two(
    top-left: [#strong(name)],
    top-right: dates,
    bottom-left: role,
    bottom-right: "",
  )
}

#let gh-helper(
  repository: "",
) = {
  // show link: it => it.body
  show link: set text(
    fill: rgb("#000000"),
  )

  [ #link("https://github.com/" + repository)[#repository] ]
}

#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  [
    *#name*, #issuer
    #if url != "" {
      [ (#link("https://" + url)[#url])]
    }
    #h(1fr) #date
  ]
}

#let extracurriculars(
  activity: "",
  dates: "",
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates,
  )
}
