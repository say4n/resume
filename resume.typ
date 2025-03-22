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

#show link: set text(fill: link_colour)

#let resume_section(section_name, section_contents, print_bottom_line: false) = {
    grid(
        columns: (2fr, 10fr),
        column-gutter: 0.2em,
        row-gutter: 1.5em,
        line(length: 100%, stroke: 2.5pt + lightgray),
        line(length: 100%, stroke: 2.5pt + lightestgray),
        smallcaps(section_name),
        section_contents
    )
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
    "Content"
)