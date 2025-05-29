#set text(font: "New Computer Modern")
#set page(
    margin: (
        left: 0.6in,
        right: 0.6in, 
        top: 0.4in,
        bottom: 0.4in,
    )
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
            "Edinburgh, Scotland",
            link("mailto:sayan.goswami.106@gmail.com"),
            link("https://sayan.page"),
            link("https://github.com/say4n"),
            link("tel:+44 07765745821")
        )
    ]
)

#resume_section(
    "Education",
    [
        #lines_with_date_and_description(
            strong("Univesitat Pompeu Fabra") + ", Barcelona, Spain",
            emph("2020 - 2021"),
            emph("Master of Science") + ", Intelligent Interactive Systems"
        )
        #lines_with_date_and_description(
            strong("Jadavpur University") + ", Kolkata, India",
            emph("2016 - 2020"),
            emph("Bachelor of Engineering") + ", Electronics & Telecommunication Engineering"
        )
    ],
)

#resume_section(
    "Experience",
    [
        #lines_with_date_and_description(
            strong("Software Development Engineer II") + ", Amazon, Edinburgh",
            emph("Jul '22 - Present"),
            "SDE at Amazon Ads. Creating realtime advertising performance reporting dashboards for external and internal customers across various Ad products."
        )
        #lines_with_date_and_description(
            strong("Site Reliability Engineer") + ", Sea AI Lab, Singapore",
            emph("Apr '22 - Jun '22"),
            "DevOps, MLOps -- created monitoring tools for internal HPC cluster, established incident management practices, migrated actively used container registry with zero downtime."
        )
        #lines_with_date_and_description(
            strong("ML Engineer") + ", Quantum Information Group, UAB, Barcelona",
            emph("Sep '21 - Mar '22"),
            "Research on applying ML methods to optimize continuos variable quantum computing circuits."
        )
        #lines_with_date_and_description(
            strong("Mentor, Google Summer of Code") + ", mlpack.org",
            emph("May '21 - Aug '21"),
            "Guiding mentees on multi-objective optimization methods for mlpack, a C++ ML library."
        )
        #lines_with_date_and_description(
            strong("Research Fellow") + ", AI Research Institute (IIIA-CSIC), Barcelona",
            emph("Nov '20 - Aug '21"),
            "Applying RL to model realistic behaviour of NPCs in simulation environments."
        )
        #lines_with_date_and_description(
            strong("Core Contributor") + ", mlpack.org, Remote",
            emph("Sep '20 - Present"),
            "Maintaining the popular C++ based open-source machine learning framework mlpack."
        )
        #lines_with_date_and_description(
            strong("Developer Associate") + ", Samsung R&D Institute, Bangalore",
            emph("May '19 - Jul '19"),
            "Significantly decreased latency, increased throughput over QUIC protocol for wireless use."
        )
        #lines_with_date_and_description(
            strong("Mentor") + ", Deep RL Nanodegree, Udacity, Remote",
            emph("Jul '19 - Jan '20"),
            "Research on applying ML methods to optimize continuos variable quantum computing circuits."
        )
        #lines_with_date_and_description(
            strong("Research Fellow") + ", Vison & Image Processing Lab, IIT Bombay, India",
            emph("May '18 - Jul '18"),
            "Worked on deep learning (CNNs, GANs) based CV methods for image co-segmentation with Prof. Subhasis Chaudhuri."
        )
    ]
)

#resume_section(
    "Awards & Achievements",
    [
        Awarded *JAE Intro ICU Fellowship* by the Spanish National Research Council (CSIC) in 2020.\
        Awarded *Summer Research Fellowship* by the Indian Academy of Sciences in 2018.\
        *National Finalist* at Automate for the Bank hackathon organised by State Bank of India in 2018.\
        Secured a *National Rank of 228* in WBJEE amongst 150,000 candidates in 2016.\
        Secured a *National Rank of 26, Zonal Rank of 2* in National Cyber Olympiad in 2016.\
        *Regional Finalist* at TCS IT Wiz Quiz (top 3/100 teams) in 2015.\
    ],
)

#resume_section(
    "Key Skills",
    [
        *Languages*: I'm fluent in Python, Kotlin, React, and English.
        I've also written a good amount of SQL, Go, JavaScript, and C++. 
        Proficient at shell scripting, and quick at picking up new languages as needed.

        *Machine Learning & Data Analysis*: Reinforcement Learning (Factored MDP, Bandits, Options Framework), Deep Learning (CNNs, RNNs, GANs), Machine Learning (SVM, KNN, Decision Trees, Bayes), LLMs, Prompt Engineering, Exploratory Data Analysis
    ],
    print_bottom_line: true,
)

#pagebreak()

#resume_section(
    "Select Personal Projects",
    [
        #link("https://github.com/say4n/metal.compute")[*metal.compute*] -- A C++ example showcasing the use of Apple's Metal API for general purpose GPU accelerated compute.
        #v(-0.8em)

        #link("https://github.com/mlpack/ensmallen")[*mlpack*] -- Implemented a framework for multi-objective optimization in the popular open-source C++ machine learning library mlpack.
        #v(-0.8em)

        #link("https://github.com/say4n/deepcosegmentation.pytorch")[*Deep Co-segmentation*] – Deep object co-segmentation with deep convolutional neural networks using a siamese architecture.
        #v(-0.8em)

        #link("https://github.com/say4n/pytorch-segnet")[*SegNet*] -- Semantic image segmentation using deep convolutional auto-encoders.
        #v(-0.8em)

        #link("https://github.com/say4n/bandit.rl")[*bandit.rl*] -- A k-armed bandit test bed implementation for comparing various reinforcement learning algorithms.
        #v(-0.8em)

        #link("https://overseerr.optionalstudio.work")[*Overseerr*] -- A native SwiftUI iOS application with over 2.4k purchases. Serves as a client for a self hosted media management system.
        #v(-0.8em)

        #link("https://github.com/say4n/dns.amplify")[*dns.amplify*] -- A proof of concept implementation to understand DNS amplification based DDoS attacks.
        #v(-0.8em)

        #link("https://github.com/say4n/rtx.go")[*rtx.go*] -- A brute force ray tracing implementation.
        #v(-0.8em)

        #link("https://github.com/say4n/eightyfive")[*eightyfive*] -- An emulator for Intel’s 8085.
        #v(-0.8em)

        #link("https://github.com/say4n/ysh")[*ysh*] -- An UNIX shell implementation.
        #v(-0.8em)

        #link("https://github.com/say4n/gobi")[*gobi*] -- An in-memory database with a query language.
        #v(-0.8em)

        #link("https://github.com/say4n/infinity")[*infinity*] -- A signed, arbitrary precision decimal arithmetic library for C++, dynamically linked at compile time.
        #v(-0.8em)

        #link("https://github.com/say4n/flow")[*flow*] -- Visualiser for control flow of arbitrary python code.
        #v(-0.8em)

        #link("https://github.com/say4n/fsmutil")[*fsmutil*] -- A finite state machine generator for binary sequence detection.
        #v(-0.8em)

        #link("https://github.com/say4n/pyscuss")[*Pyscuss*] – A real time messaging app, uses web sockets, non-persistent sessions.
        #v(-0.8em)

        #link("https://github.com/say4n/bfutil")[*bfutil*] -- An interpreter for the BF language and a translator from BF to C with optimisations.
        #v(-0.8em)

        #link("https://github.com/say4n/LinkTo")[*LinkTo*] -- An URL shortener with analytics dashboard, built using Flask framework, uses Redis as datastore.
    ],
)


#resume_section(
    "Academic Publications",
    [
        "Brain Signal Analysis for Mind Controlled Type-Writer Using a Deep Neural Network" -- $5^"th"$ WiSPNET, 2020, Rohini Das, *Sayan Goswami*, Sayantani Ghosh, Mousumi Laha, Chandrima Debnath and Amit Konar

        "Relationship between Nash Equilibria and Pareto Optimal Solutions for Games of Pure Coordination" -- $10^"th"$ ICCCNT, 2019, Rohini Das, *Sayan Goswami* and Amit Konar

        "Application of Deep Neural Network on Image Co-segmentation" -- Indian Academy of Sciences SRF Report, 2018, *Sayan Goswami* and Subhasis Chaudhuri
    ],
    print_bottom_line: true,
)

#align(start + bottom)[
    #text(gray)[
      Last updated on #datetime.today().display(
        "[month repr:short] [day], [year]",
      ).
    ]
]