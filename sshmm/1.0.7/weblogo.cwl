class: CommandLineTool
id: weblogo.cwl
inputs:
- id: sequence_data_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_logo_eps
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fin
  doc: 'Sequence input file (default: stdin)'
  type: File
  inputBinding:
    prefix: --fin
- id: upload
  doc: Upload input file from URL
  type: string
  inputBinding:
    prefix: --upload
- id: datatype
  doc: 'Type of multiple sequence alignment or position weight matrix file: (clustal,
    fasta, msf, genbank, nbrf, nexus, phylip, stockholm, intelligenetics, table, array,
    transfac)'
  type: string
  inputBinding:
    prefix: --datatype
- id: f_out
  doc: 'Output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --fout
- id: format
  doc: 'Format of output: eps (default), png, png_print, pdf, jpeg, svg, logodata'
  type: string
  inputBinding:
    prefix: --format
- id: sequence_type
  doc: "The type of sequence data: 'protein', 'rna' or 'dna'."
  type: string
  inputBinding:
    prefix: --sequence-type
- id: alphabet
  doc: The set of symbols to count, e.g. 'AGTC'. All characters not in the alphabet
    are ignored. If neither the alphabet nor sequence-type are specified then weblogo
    will examine the input data and make an educated guess. See also --sequence-type,
    --ignore-lower-case
  type: string
  inputBinding:
    prefix: --alphabet
- id: units
  doc: A unit of entropy ('bits' (default), 'nats', 'digits'), or a unit of free energy
    ('kT', 'kJ/mol', 'kcal/mol'), or 'probability' for probabilities
  type: string
  inputBinding:
    prefix: --units
- id: composition
  doc: "The expected composition of the sequences: 'auto' (default), 'equiprobable',\
    \ 'none' (do not perform any compositional adjustment), a CG percentage, a species\
    \ name (e.g. 'E. coli', 'H. sapiens'), or an explicit distribution (e.g. \"{'A':10,\
    \ 'C':40, 'G':40, 'T':10}\"). The automatic option uses a typical distribution\
    \ for proteins and equiprobable distribution for everything else."
  type: string
  inputBinding:
    prefix: --composition
- id: weight
  doc: The weight of prior data.  Default depends on alphabet length
  type: string
  inputBinding:
    prefix: --weight
- id: first_index
  doc: 'Index of first position in sequence data (default: 1)'
  type: string
  inputBinding:
    prefix: --first-index
- id: lower
  doc: Lower bound of sequence to display
  type: string
  inputBinding:
    prefix: --lower
- id: upper
  doc: Upper bound of sequence to display
  type: string
  inputBinding:
    prefix: --upper
- id: ignore_lower_case
  doc: Disregard lower case letters and only count upper case letters in sequences.
  type: boolean
  inputBinding:
    prefix: --ignore-lower-case
- id: reverse
  doc: reverse sequences
  type: boolean
  inputBinding:
    prefix: --reverse
- id: complement
  doc: complement nucleic sequences
  type: boolean
  inputBinding:
    prefix: --complement
- id: rev_comp
  doc: reverse complement nucleic sequences
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: size
  doc: Specify a standard logo size (small, medium (default), large)
  type: string
  inputBinding:
    prefix: --size
- id: stacks_per_line
  doc: 'Maximum number of logo stacks per logo line. (default: 40)'
  type: string
  inputBinding:
    prefix: --stacks-per-line
- id: title
  doc: Logo title text.
  type: string
  inputBinding:
    prefix: --title
- id: label
  doc: A figure label, e.g. '2a'
  type: string
  inputBinding:
    prefix: --label
- id: show_x_axis
  doc: '/NO      Display sequence numbers along x-axis? (default: True)'
  type: string
  inputBinding:
    prefix: --show-xaxis
- id: xlabel
  doc: X-axis label
  type: string
  inputBinding:
    prefix: --xlabel
- id: annotate
  doc: A comma separated list of custom stack annotations, e.g. '1,3,4,5,6,7'.  Annotation
    list must be same length as sequences.
  type: string
  inputBinding:
    prefix: --annotate
- id: rotate_numbers
  doc: '/NO  Draw X-axis numbers with vertical orientation (default: False).'
  type: string
  inputBinding:
    prefix: --rotate-numbers
- id: number_interval
  doc: 'Distance between numbers on X-axis (default: 5)'
  type: string
  inputBinding:
    prefix: --number-interval
- id: yaxis
  doc: 'Height of yaxis in units. (Default: Maximum value with uninformative prior.)'
  type: string
  inputBinding:
    prefix: --yaxis
- id: show_yaxis
  doc: '/NO      Display entropy scale along y-axis? (default: True)'
  type: string
  inputBinding:
    prefix: --show-yaxis
- id: ylabel
  doc: Y-axis label (default depends on plot type and units)
  type: string
  inputBinding:
    prefix: --ylabel
- id: show_ends
  doc: '/NO       Label the ends of the sequence? (default: False)'
  type: string
  inputBinding:
    prefix: --show-ends
- id: fine_print
  doc: 'The fine print (default: weblogo version)'
  type: string
  inputBinding:
    prefix: --fineprint
- id: tic_marks
  doc: 'Distance between ticmarks (default: 1.0)'
  type: string
  inputBinding:
    prefix: --ticmarks
- id: error_bars
  doc: '/NO       Display error bars? (default: True)'
  type: string
  inputBinding:
    prefix: --errorbars
- id: reverse_stacks
  doc: '/NO  Draw stacks with largest letters on top? (default: True)'
  type: string
  inputBinding:
    prefix: --reverse-stacks
- id: color_scheme
  doc: Specify a standard color scheme (auto, base pairing, charge, chemistry, classic,
    hydrophobicity, monochrome)
  type: string
  inputBinding:
    prefix: --color-scheme
- id: color
  doc: SYMBOLS DESCRIPTION  Specify symbol colors, e.g. --color black AG 'Purine'
    --color red TC 'Pyrimidine'
  type: string
  inputBinding:
    prefix: --color
- id: default_color
  doc: Symbol color if not otherwise specified.
  type: string
  inputBinding:
    prefix: --default-color
- id: font_size
  doc: 'Regular text font size in points (default: 10)'
  type: string
  inputBinding:
    prefix: --fontsize
- id: title_font_size
  doc: 'Title text font size in points (default: 12)'
  type: string
  inputBinding:
    prefix: --title-fontsize
- id: small_font_size
  doc: 'Small text font size in points (default: 6)'
  type: string
  inputBinding:
    prefix: --small-fontsize
- id: number_font_size
  doc: 'Axis numbers font size in points (default: 8)'
  type: string
  inputBinding:
    prefix: --number-fontsize
- id: text_font
  doc: 'Specify font for labels (default: ArialMT)'
  type: string
  inputBinding:
    prefix: --text-font
- id: logo_font
  doc: 'Specify font for logo (default: Arial-BoldMT)'
  type: string
  inputBinding:
    prefix: --logo-font
- id: title_font
  doc: 'Specify font for title (default: ArialMT)'
  type: string
  inputBinding:
    prefix: --title-font
- id: stack_width
  doc: 'Width of a logo stack (default: 10.8)'
  type: string
  inputBinding:
    prefix: --stack-width
- id: aspect_ratio
  doc: 'Ratio of stack height to width (default: 5)'
  type: string
  inputBinding:
    prefix: --aspect-ratio
- id: box
  doc: '/NO             Draw boxes around symbols? (default: no)'
  type: string
  inputBinding:
    prefix: --box
- id: resolution
  doc: 'Bitmap resolution in dots per inch (DPI). (Default: 96 DPI, except png_print,
    600 DPI) Low resolution bitmaps (DPI<300) are antialiased.'
  type: string
  inputBinding:
    prefix: --resolution
- id: scale_width
  doc: '/NO     Scale the visible stack width by the fraction of symbols in the column?  (I.e.
    columns with many gaps of unknowns are narrow.)  (Default: yes)'
  type: string
  inputBinding:
    prefix: --scale-width
- id: debug
  doc: '/NO           Output additional diagnostic information. (Default: False)'
  type: string
  inputBinding:
    prefix: --debug
- id: errorbar_fraction
  doc: 'Sets error bars display proportion (default: 0.9)'
  type: string
  inputBinding:
    prefix: --errorbar-fraction
- id: errorbar_width_fraction
  doc: 'Sets error bars width display proportion (default: 0.25)'
  type: string
  inputBinding:
    prefix: --errorbar-width-fraction
- id: errorbar_gray
  doc: "Sets error bars' gray scale percentage (default: 0.75)"
  type: string
  inputBinding:
    prefix: --errorbar-gray
- id: serve
  doc: Start a standalone WebLogo server for creating sequence logos.
  type: boolean
  inputBinding:
    prefix: --serve
- id: port
  doc: 'Listen to this local port. (Default: 8080)'
  type: string
  inputBinding:
    prefix: --port
outputs: []
cwlVersion: v1.1
baseCommand:
- weblogo
