#set text(font: "New Computer Modern")
#set page(
    margin: (
        left: 0.6in,
        right: 0.6in, 
        top: 0.4in,
        bottom: 0.4in,
    ),
)

#let link_colour = rgb("006699")
#let lightestgray = rgb("A9A9A9")
#let lightergray = rgb("626262")
#let lightgray = rgb("595959")
#let midgray = rgb("393939")
#let darkgray = rgb("292929")
#let verydarkgray = rgb("191919")

#show text: set text(0.95em)
#show link: set text(fill: link_colour)
#set par(leading: 0.45em)

#show list: set list(marker: [▫])

#let lines_with_date_and_description(title, date, description) = {
    [
        #grid(
            columns: (auto, 1fr),
            column-gutter: 0.5em,
            align: (start, end),
            title,
            date,
        )
        #v(-0.7em) #description
    ]
}

#let resume_section(section_name, section_contents, print_bottom_line: false) = {
    [
        #grid(
            columns: (2fr, 10fr),
            column-gutter: 0.2em,
            row-gutter: 1.5em,
            line(length: 100%, stroke: 2.5pt + lightgray),
            line(length: 100%, stroke: 2.5pt + lightestgray),
            smallcaps(section_name),
            section_contents,
        )

        #if print_bottom_line [
            #grid(
                columns: (2fr, 10fr),
                column-gutter: 0.2em,
                line(length: 100%, stroke: 2.5pt + lightgray),
                line(length: 100%, stroke: 2.5pt + lightestgray),
            )
        ]
    ]
}

#grid(
    columns: (1fr, 1fr),
    align: (start + bottom, end + bottom),
    text(2em, weight: 700)[Sayan Goswami],
    [
        #set text(0.8em)
        #grid(
            columns: (auto),
            align: (end),
            row-gutter: 0.5em,
            "London, UK",
            link("mailto:sayan.goswami.106@gmail.com"),
            link("https://sayan.page"),
            link("https://github.com/say4n"),
            link("tel:+44 7765 745821")
        )
    ]
)

#align(center)[Machine Learning Engineer | LLM Post-Training, Safety & Applied ML]

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Software Engineer, Machine Learning") + ", Meta, London",
            emph("Dec '25 - Present"),
            [
                - Leading a pod of 5 ICs to improve post training for Meta's frontier models.
                - Identifying similarity amongst billions of posts to reduce harm (11.91% reduction in teens demographic, 104% of original goal) across Meta's family of products -- from classical ML to SFT of large language models. 
                - Upskilling team through regular research deep-dives, tech trend analysis, and mentorship on industry best practices.
                - Architected an org-wide model tracking service to prevent downstream failures and influenced the framework as a blueprint for other engineering teams.
            ]
        )

        #lines_with_date_and_description(
            strong("Software Development Engineer II") + ", Amazon, Edinburgh",
            emph("Jul '22 - Nov '25"),
            [
                - Built and productionized ML models for ad creative efficiency across Amazon, powering #link(
                  "https://advertising.amazon.com/en-gb/library/guides/dco-dynamic-creative-optimization",
                )[dynamic creative optimization] and driving a \~15% increase in ad click-through rate.
                - Created a scalable service to track and manage the lifecycle of machine learning experiments used by internal teams, including a framework to easily productionize machine learning models built by internal teams.
                - Built #link("https://aistudio.amazon")[AI Studio] for both internal and external customers - Amazon's first of its kind offering for advertisers. Architected and built an automated testing strategy to keep the service stable and highly available.
                - Built the Sponsored ads #link("https://advertising.amazon.co.uk/help/GHAAGTQNVBCLE8SS")[online report], the only place to look at campaign performance across a multitude of Sponsored ads products offered by Amazon. This influenced \$11.4B in ad spend across Sponsored ads advertisers (\~3k MAU).
                - Built internal systems to raise the bar on operational excellence. This led to reduction in latency (-75% from 20s to 5s), faster deployments (-91% from 7 hours to 35 mins) and countless hours saved.
                - Mentored new hires and team mates on best practices, up and coming technology trends and tools across various projects.
            ]
        )
        #lines_with_date_and_description(
            strong("Site Reliability Engineer") + ", Sea AI Lab, Singapore",
            emph("Apr '22 - Jun '22"),
            [
                - Enhanced HPC cluster reliability by developing and implementing advanced monitoring tools and establishing robust incident management practices.
                - Executed a seamless, zero downtime migration of a critical, actively used container registry, ensuring uninterrupted service.
            ]
        )
        #lines_with_date_and_description(
            strong("ML Engineer") + ", Quantum Information Group, UAB, Barcelona",
            emph("Sep '21 - Mar '22"),
            "Research on applying ML methods to optimize continuous variable quantum computing circuits."
        )
        #lines_with_date_and_description(
            strong("Mentor, Google Summer of Code") + ", mlpack.org",
            emph("May '21 - Aug '21"),
            "Guiding mentees on multi-objective optimization methods for mlpack, a C++ ML library."
        )
        #lines_with_date_and_description(
            strong("Research Fellow") + ", AI Research Institute (IIIA-CSIC), Barcelona",
            emph("Nov '20 - Aug '21"),
            "Applying RL to model realistic behavior of NPCs in simulation environments."
        )
        #lines_with_date_and_description(
            strong("Core Contributor") + ", mlpack.org, Remote",
            emph("Sep '20 - Present"),
            [
                Implemented a framework for multi-objective optimization. 
                Maintainer for the popular open-source machine learning framework mlpack.
            ]
        )
        // #lines_with_date_and_description(
        //     strong("Developer Associate") + ", Samsung R&D Institute, Bangalore",
        //     emph("May '19 - Jul '19"),
        //     "Significantly decreased latency, increased throughput over QUIC protocol for wireless use."
        // )
        // #lines_with_date_and_description(
        //     strong("Research Fellow") + ", Vision & Image Processing Lab, IIT Bombay, India",
        //     emph("May '18 - Jul '18"),
        //     "Worked on deep learning (CNNs, GANs) based CV methods for image co-segmentation with Prof. Subhasis Chaudhuri."
        // )
    ],
)

#resume_section(
  "Education",
  [
    #lines_with_date_and_description(
      strong("Universitat Pompeu Fabra") + ", Barcelona, Spain",
      emph("2020 - 2021"),
      emph("Master of Science") + ", Intelligent Interactive Systems",
    )
    #lines_with_date_and_description(
      strong("Jadavpur University") + ", Kolkata, India",
      emph("2016 - 2020"),
      emph("Bachelor of Engineering") + ", Electronics & Telecommunication Engineering",
    )
  ],
)

#resume_section(
    "Key Skills",
    [
        *Machine Learning*: LLM Post-Training (SFT, RLVR), Transformers, Deep Learning (CNN), Classical ML (Trees, RF, XGBoost)

        *Frameworks & Tools*: PyTorch, JAX, AWS (SageMaker, Bedrock), Docker, Git

        *Languages*: Python, SQL, C++, Go, Kotlin, TypeScript
    ],
)

#resume_section(
    "Projects & Open Source",
    [
        #link("https://optionalstudio.work")[*Ovue*] -- Built and launched a native SwiftUI iOS client that generated \$10k+ in revenue from more than 4,500 purchases.
        #v(-0.8em)

        #link("https://github.com/say4n/mlxgpt")[*mlxgpt*] -- Implemented GPT-2 from scratch using Apple’s MLX framework.
        #v(-0.8em)

        #link("https://github.com/mlpack/ensmallen")[*ensmallen*] -- Implemented a framework for multi-objective optimization in the popular open-source header-only C++ library for numerical optimization.
        #v(-0.8em)

        // #link("https://github.com/say4n/deepcosegmentation.pytorch")[*Deep Co-segmentation*] -- Deep object co-segmentation with deep convolutional neural networks using a siamese architecture.
        // #v(-0.8em)

        // #link("https://github.com/say4n/pytorch-segnet")[*SegNet*] -- Semantic image segmentation using deep convolutional auto-encoders.
        // #v(-0.8em)

        // #link("https://github.com/say4n/bandit.rl")[*bandit.rl*] -- A k-armed bandit test bed implementation for comparing various reinforcement learning algorithms.
        // #v(-0.8em)

        #link("https://github.com/say4n/metal.compute")[*metal.compute*] -- Implemented general-purpose GPU-accelerated compute in C++ using Apple's Metal API.

        // #link("https://github.com/say4n/dns.amplify")[*dns.amplify*] -- A proof of concept implementation to understand DNS amplification based DDoS attacks.
        // #v(-0.8em)

        // #link("https://github.com/say4n/rtx.go")[*rtx.go*] -- A brute force ray tracing implementation.
        // #v(-0.8em)

        // #link("https://github.com/say4n/eightyfive")[*eightyfive*] -- An emulator for Intel’s 8085.
        // #v(-0.8em)

        // #link("https://github.com/say4n/ysh")[*ysh*] -- An UNIX shell implementation.
        // #v(-0.8em)

        // #link("https://github.com/say4n/gobi")[*gobi*] -- An in-memory database with a query language.
        // #v(-0.8em)

        // #link("https://github.com/say4n/infinity")[*infinity*] -- A signed, arbitrary precision decimal arithmetic library for C++, dynamically linked at compile time.

        // #link("https://github.com/say4n/flow")[*flow*] -- Visualiser for control flow of arbitrary python code.
        // #v(-0.8em)

        // #link("https://github.com/say4n/fsmutil")[*fsmutil*] -- A finite state machine generator for binary sequence detection.
        // #v(-0.8em)

        // #link("https://github.com/say4n/pyscuss")[*Pyscuss*] -- A real time messaging app, uses web sockets, non-persistent sessions.
        // #v(-0.8em)

        // #link("https://github.com/say4n/bfutil")[*bfutil*] -- An interpreter for the BF language and a translator from BF to C with optimizations.
        // #v(-0.8em)

        // #link("https://github.com/say4n/LinkTo")[*LinkTo*] -- An URL shortener with analytics dashboard, built using Flask framework, uses Redis as datastore.
    ],
    print_bottom_line: true,
)

// #resume_section(
//   "Awards & Achievements",
//   [
//     Awarded *JAE Intro ICU Fellowship* by the Spanish National Research Council (CSIC) in 2020.\
//     Awarded *Summer Research Fellowship* by the Indian Academy of Sciences in 2018.\
//     *National Finalist* at Automate for the Bank hackathon organized by State Bank of India in 2018.\
//     Secured a *National Rank of 228* in WBJEE amongst 150,000 candidates in 2016.\
//     Secured a *National Rank of 26, Zonal Rank of 2* in National Cyber Olympiad in 2016.\
//     *Regional Finalist* at TCS IT Wiz Quiz (top 3/100 teams) in 2015.\
//   ],
// )

// #resume_section(
//     "Academic Publications",
//     [
//         "Brain Signal Analysis for Mind Controlled Type-Writer Using a Deep Neural Network" -- $5^"th"$ WiSPNET, 2020, Rohini Das, *Sayan Goswami*, Sayantani Ghosh, Mousumi Laha, Chandrima Debnath and Amit Konar

//         "Relationship between Nash Equilibria and Pareto Optimal Solutions for Games of Pure Coordination" -- $10^"th"$ ICCCNT, 2019, Rohini Das, *Sayan Goswami* and Amit Konar

//         "Application of Deep Neural Network on Image Co-segmentation" -- Indian Academy of Sciences SRF Report, 2018, *Sayan Goswami* and Subhasis Chaudhuri
//     ],
//     print_bottom_line: true,
// )


#align(start + bottom)[
    #text(gray)[
      Built on #datetime.today().display(
        "[month repr:short] [day], [year]",
      ). Download the most recent version from #link("https://github.com/say4n/resume/releases/download/latest/resume.pdf")[here].
    ]
]