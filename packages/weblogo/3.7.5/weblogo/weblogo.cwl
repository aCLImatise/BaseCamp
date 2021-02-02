class: CommandLineTool
id: weblogo.cwl
inputs:
- id: in_fin
  doc: 'Sequence input file (default: stdin)'
  type: File
  inputBinding:
    prefix: --fin
- id: in_upload
  doc: Upload input file from URL
  type: File
  inputBinding:
    prefix: --upload
- id: in_datatype
  doc: "Type of multiple sequence alignment or\nposition weight matrix file: (clustal,\
    \ fasta,\nmsf, genbank, nbrf, nexus, phylip, stockholm,\nintelligenetics, table,\
    \ array, transfac)"
  type: File
  inputBinding:
    prefix: --datatype
- id: in_f_out
  doc: 'Output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --fout
- id: in_format
  doc: "Format of output: eps (default), png,\npng_print, pdf, jpeg, svg, logodata"
  type: string
  inputBinding:
    prefix: --format
- id: in_sequence_type
  doc: "The type of sequence data: 'protein', 'rna' or\n'dna'."
  type: string
  inputBinding:
    prefix: --sequence-type
- id: in_alphabet
  doc: "The set of symbols to count, e.g. 'AGTC'. All\ncharacters not in the alphabet\
    \ are ignored. If\nneither the alphabet nor sequence-type are\nspecified then\
    \ weblogo will examine the input\ndata and make an educated guess. See also\n\
    --sequence-type, --ignore-lower-case"
  type: string
  inputBinding:
    prefix: --alphabet
- id: in_units
  doc: "A unit of entropy ('bits' (default), 'nats',\n'digits'), or a unit offree\
    \ energy ('kT',\n'kJ/mol', 'kcal/mol'), or 'probability' for\nprobabilities"
  type: string
  inputBinding:
    prefix: --units
- id: in_composition
  doc: "The expected composition of the sequences:\n'auto' (default), 'equiprobable',\
    \ 'none' (do\nnot perform any compositional adjustment), a\nCG percentage, a species\
    \ name (e.g. 'E. coli',\n'H. sapiens'), or an explicit distribution\n(e.g. \"\
    {'A':10, 'C':40, 'G':40, 'T':10}\"). The\nautomatic option uses a typical distribution\n\
    for proteins and equiprobable distribution for\neverything else."
  type: long
  inputBinding:
    prefix: --composition
- id: in_weight
  doc: "The weight of prior data.  Default depends on\nalphabet length"
  type: long
  inputBinding:
    prefix: --weight
- id: in_first_index
  doc: "Index of first position in sequence data\n(default: 1)"
  type: long
  inputBinding:
    prefix: --first-index
- id: in_lower
  doc: Lower bound of sequence to display
  type: string
  inputBinding:
    prefix: --lower
- id: in_upper
  doc: Upper bound of sequence to display
  type: string
  inputBinding:
    prefix: --upper
- id: in_ignore_lower_case
  doc: "Disregard lower case letters and only count\nupper case letters in sequences."
  type: boolean
  inputBinding:
    prefix: --ignore-lower-case
- id: in_reverse
  doc: reverse sequences
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_complement
  doc: complement nucleic sequences
  type: boolean
  inputBinding:
    prefix: --complement
- id: in_rev_comp
  doc: reverse complement nucleic sequences
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: in_size
  doc: "Specify a standard logo size (small, medium\n(default), large)"
  type: long
  inputBinding:
    prefix: --size
- id: in_stacks_per_line
  doc: "Maximum number of logo stacks per logo line.\n(default: 40)"
  type: long
  inputBinding:
    prefix: --stacks-per-line
- id: in_title
  doc: Logo title text.
  type: string
  inputBinding:
    prefix: --title
- id: in_label
  doc: A figure label, e.g. '2a'
  type: long
  inputBinding:
    prefix: --label
- id: in_show_x_axis
  doc: "Display sequence numbers along x-axis?\n(default: True)"
  type: string
  inputBinding:
    prefix: --show-xaxis
- id: in_xlabel
  doc: X-axis label
  type: string
  inputBinding:
    prefix: --xlabel
- id: in_annotate
  doc: "A comma separated list of custom stack\nannotations, e.g. '1,3,4,5,6,7'. \
    \ Annotation\nlist must be same length as sequences."
  type: long
  inputBinding:
    prefix: --annotate
- id: in_rotate_numbers
  doc: "Draw X-axis numbers with vertical orientation\n(default: False)."
  type: string
  inputBinding:
    prefix: --rotate-numbers
- id: in_number_interval
  doc: "Distance between numbers on X-axis (default:\n5)"
  type: long
  inputBinding:
    prefix: --number-interval
- id: in_yaxis
  doc: "Height of yaxis in units. (Default: Maximum\nvalue with uninformative prior.)"
  type: long
  inputBinding:
    prefix: --yaxis
- id: in_show_yaxis
  doc: "Display entropy scale along y-axis? (default:\nTrue)"
  type: string
  inputBinding:
    prefix: --show-yaxis
- id: in_ylabel
  doc: "Y-axis label (default depends on plot type and\nunits)"
  type: string
  inputBinding:
    prefix: --ylabel
- id: in_show_ends
  doc: "Label the ends of the sequence? (default:\nFalse)"
  type: string
  inputBinding:
    prefix: --show-ends
- id: in_fine_print
  doc: 'The fine print (default: weblogo version)'
  type: string
  inputBinding:
    prefix: --fineprint
- id: in_tic_marks
  doc: 'Distance between ticmarks (default: 1.0)'
  type: long
  inputBinding:
    prefix: --ticmarks
- id: in_error_bars
  doc: 'Display error bars? (default: True)'
  type: string
  inputBinding:
    prefix: --errorbars
- id: in_reverse_stacks
  doc: "Draw stacks with largest letters on top?\n(default: True)"
  type: string
  inputBinding:
    prefix: --reverse-stacks
- id: in_color_scheme
  doc: "Specify a standard color scheme (auto, base\npairing, charge, chemistry, classic,\n\
    hydrophobicity, monochrome)"
  type: string
  inputBinding:
    prefix: --color-scheme
- id: in_color
  doc: "SYMBOLS DESCRIPTION\nSpecify symbol colors, e.g. --color black AG\n'Purine'\
    \ --color red TC 'Pyrimidine'"
  type: string
  inputBinding:
    prefix: --color
- id: in_default_color
  doc: Symbol color if not otherwise specified.
  type: string
  inputBinding:
    prefix: --default-color
- id: in_font_size
  doc: 'Regular text font size in points (default: 10)'
  type: long
  inputBinding:
    prefix: --fontsize
- id: in_title_font_size
  doc: 'Title text font size in points (default: 12)'
  type: long
  inputBinding:
    prefix: --title-fontsize
- id: in_small_font_size
  doc: 'Small text font size in points (default: 6)'
  type: long
  inputBinding:
    prefix: --small-fontsize
- id: in_number_font_size
  doc: 'Axis numbers font size in points (default: 8)'
  type: long
  inputBinding:
    prefix: --number-fontsize
- id: in_text_font
  doc: 'Specify font for labels (default: ArialMT)'
  type: string
  inputBinding:
    prefix: --text-font
- id: in_logo_font
  doc: 'Specify font for logo (default: Arial-BoldMT)'
  type: string
  inputBinding:
    prefix: --logo-font
- id: in_title_font
  doc: 'Specify font for title (default: ArialMT)'
  type: string
  inputBinding:
    prefix: --title-font
- id: in_stack_width
  doc: 'Width of a logo stack (default: 10.8)'
  type: double
  inputBinding:
    prefix: --stack-width
- id: in_aspect_ratio
  doc: 'Ratio of stack height to width (default: 5)'
  type: long
  inputBinding:
    prefix: --aspect-ratio
- id: in_box
  doc: 'Draw boxes around symbols? (default: no)'
  type: string
  inputBinding:
    prefix: --box
- id: in_resolution
  doc: "Bitmap resolution in dots per inch (DPI).\n(Default: 96 DPI, except png_print,\
    \ 600 DPI)\nLow resolution bitmaps (DPI<300) are\nantialiased."
  type: long
  inputBinding:
    prefix: --resolution
- id: in_scale_width
  doc: "Scale the visible stack width by the fraction\nof symbols in the column? \
    \ (I.e. columns with\nmany gaps of unknowns are narrow.)  (Default:\nyes)"
  type: string
  inputBinding:
    prefix: --scale-width
- id: in_debug
  doc: "Output additional diagnostic information.\n(Default: False)"
  type: string
  inputBinding:
    prefix: --debug
- id: in_errorbar_fraction
  doc: "Sets error bars display proportion (default:\n0.9)"
  type: long
  inputBinding:
    prefix: --errorbar-fraction
- id: in_errorbar_width_fraction
  doc: "Sets error bars width display proportion\n(default: 0.25)"
  type: long
  inputBinding:
    prefix: --errorbar-width-fraction
- id: in_errorbar_gray
  doc: "Sets error bars' gray scale percentage\n(default: 0.75)"
  type: long
  inputBinding:
    prefix: --errorbar-gray
- id: in_serve
  doc: "Start a standalone WebLogo server for creating\nsequence logos."
  type: boolean
  inputBinding:
    prefix: --serve
- id: in_port
  doc: 'Listen to this local port. (Default: 8080)'
  type: long
  inputBinding:
    prefix: --port
- id: in_sequence_data_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence_logo_dot_eps
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_f_out
  doc: 'Output file (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_f_out)
cwlVersion: v1.1
baseCommand:
- weblogo
