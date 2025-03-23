#set text(font: "New Computer Modern")
#set page(
    margin: (
        left: 0.6in,
        right: 0.6in, 
        top: 0.4in,
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
            strong("Research Fellow") + ", Vison \& Image Processing Lab, IIT Bombay, India",
            emph("May '18 - Jul '18"),
            "Worked on deep learning (CNNs, GANs) based CV methods for image co-segmentation with Prof. Subhasis Chaudhuri."
        )
    ]
)