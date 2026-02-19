#import "./template.typ": *

#show: cv.with(
  author: "Atalariq Barra Hadinugraha",
  // pronouns: "He/Him",
  location: "Sleman, Yogyakarta",
  email: "atalariq.dev@outlook.com",
  github: "github.com/atalariq",
  linkedin: "linkedin.com/in/atalariq",
  phone: "wa.me/62859106987796",
  personal-site: "atalariq.dev",

  paper: "a4",
  lang: "en",
  font: "New Computer Modern",
  author-font-size: 14pt,
  font-size: 11pt,
  accent-color: "#26428b",
  author-position: center,
  personal-info-position: center,
)

#line(length: 100%, stroke: 1pt)

I’m Atalariq Barra, a Software Engineering student at UGM passionate about solving problems and building useful software. My technical journey began with deep curiosity, which led me to install Linux and accidentally delete Windows. This forced me to master the Command-Line Interface (CLI) and open-source software, fundamentally shaping my approach to technology.

That early experience taught me more than just code. It sharpened my problem-solving, adaptability, curiosity, and patience. I now apply this mindset to all my work, from competing as a core member of the Informatics Olympiad Team to practical projects like migrating a mobile app to Flutter and integrating Google's ML Kit. I am a fast-learner eager to apply my critical thinking to complex challenges in building scalable apps.


== Education

#edu(
  institution: "Gadjah Mada University",
  location: "Yogyakarta, Indonesia",
  dates: dates-helper(start-date: "Aug 2025", end-date: "Present"),
  degree: "Bachelor of Applied Science, Technology of Software Engineering",
)

- Relevant Coursework: Data Structures and Algorithms, Database, Design Elementer, Web Programming

#edu(
  institution: "SMAN 1 Boyolali",
  location: "Central Java, Indonesia",
  dates: dates-helper(start-date: "2023", end-date: "2025"),
)

- Achieved Provincial Level Participant status in the National Science Olympiad (2023 & 2024).

== Organization Experience

#experience(
  name: "Google Developer Group of Campus UGM",
  role: "Hacker (Backend)",
  dates: dates-helper(start-date: "Dec 2025", end-date: "Present"),
)

- Collaboratively building functional backend API
  - Menu Catalog API (#gh-helper(repository: "atalariq/menu-api"))
  - Sift - AI Recruitment Screening & Talent Matching Platform (#gh-helper(repository: "atalariq/sift"))
  - Sipilah - Circular Resilience App (#gh-helper(repository: "ayashar/sipilah"))

// #experience(
//   name: "Paedagogie Project",
//   location: "Boyolali",
//   role: "Event Volunteer",
//   dates: dates-helper(start-date: "Aug", end-date: "Sep 2024"),
// )
//
// - Contributed to a service project, assisting with event execution and documentation.

// #experience(
//   name: "Makrab OSN SMAN 1 Boyolali",
//   role: "Event Committee",
//   dates: dates-helper(start-date: "Jan", end-date: "Feb 2024"),
// )
//
// - Coordinated and served as the Person in Charge (PIC) for a participant group.
// - Designed visual assets for the event, including committee co-cards.

#experience(
  name: "Informatics Olympiad (OSN) Core Team SMAN 1 Boyolali",
  role: "Team Leader",
  dates: dates-helper(start-date: "Jan", end-date: "Feb 2024"),
)

- Led and coordinated the school's Informatics Olympiad team, acting as the liaison between students and faculty mentors.
- Designed study plans, compiled learning resources, and conducted peer-tutoring and collaborative study sessions.

== Project

#project(
  name: "Digital Garden",
  role: "Content Writer",
  dates: dates-helper(start-date: "July 2025", end-date: "Present"),
)

- Building a personal knowledge base and technical blog using the Quartz static site generator.
- Documenting learning processes and sharing knowledge related to computer science and software development.
- Repository: #gh-helper(repository: "atalariq/digital-garden")

#project(
  name: "Sift - AI Recruitment Screening & Talent Matching Platform",
  role: "Backend Developer",
  dates: dates-helper(start-date: "Jan", end-date: "Feb 2026"),
)

- Designing and implement functional RESTful API using Express.js.
- Integrate Gemini API for candidates' CV scoring mechanism.
- Repository: #gh-helper(repository: "atalariq/sift")

#project(
  name: "Si Perisai - Drowsiness Detection",
  role: "Mobile Developer",
  dates: dates-helper(start-date: "June", end-date: "July 2024"),
)

- Design and prototyping UI/UX in Figma prior to implementation.
- Rewrote a mobile application from MIT App Inventor to Flutter, utilize native Google's ML Kit for face detection
- Repository: #gh-helper(repository: "atalariq/flutter-drowsiness-detection")

== Skill

- *Programming Languages*: C++, Go, Python, Web (HTML, CSS, JavaScript), Dart, Nix, Lua
- *Frameworks*: Express.js, Flutter, Gin
- *Tools*: Linux (CLI), Git & GitHub, Docker, Neovim, LLMs, and AI Agents (Gemini CLI)
- *Languages*: Bahasa Indonesia (Fluent), English (Intermediate)
- *Soft skills*: Fast-Learner, Problem-solving, Critical Thinking, Team Collaboration
- *Interest*: Cybersecurity, Web3, Terminal/CLI

