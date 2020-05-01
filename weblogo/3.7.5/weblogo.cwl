#!/usr/bin/env cwl-runner

baseCommand:
- weblogo
class: CommandLineTool
cwlVersion: v1.0
id: weblogo
inputs:
- doc: ''
  id: sequence_data_fa
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sequence_logo_eps
  inputBinding:
    position: 1
  type: string
- doc: 'Sequence input file (default: stdin)'
  id: fin
  inputBinding:
    prefix: --fin
  type: File
- doc: Upload input file from URL
  id: upload
  inputBinding:
    prefix: --upload
  type: string
- doc: 'Type of multiple sequence alignment or position weight matrix file: (clustal,
    fasta, msf, genbank, nbrf, nexus, phylip, stockholm, intelligenetics, table, array,
    transfac)'
  id: datatype
  inputBinding:
    prefix: --datatype
  type: string
- doc: 'Output file (default: stdout)'
  id: f_out
  inputBinding:
    prefix: --fout
  type: File
- doc: 'Format of output: eps (default), png, png_print, pdf, jpeg, svg, logodata'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: "The type of sequence data: 'protein', 'rna' or 'dna'."
  id: sequence_type
  inputBinding:
    prefix: --sequence-type
  type: string
- doc: The set of symbols to count, e.g. 'AGTC'. All characters not in the alphabet
    are ignored. If neither the alphabet nor sequence-type are specified then weblogo
    will examine the input data and make an educated guess. See also --sequence-type,
    --ignore-lower-case
  id: alphabet
  inputBinding:
    prefix: --alphabet
  type: string
- doc: A unit of entropy ('bits' (default), 'nats', 'digits'), or a unit offree energy
    ('kT', 'kJ/mol', 'kcal/mol'), or 'probability' for probabilities
  id: units
  inputBinding:
    prefix: --units
  type: string
- doc: "The expected composition of the sequences: 'auto' (default), 'equiprobable',\
    \ 'none' (do not perform any compositional adjustment), a CG percentage, a species\
    \ name (e.g. 'E. coli', 'H. sapiens'), or an explicit distribution (e.g. \"{'A':10,\
    \ 'C':40, 'G':40, 'T':10}\"). The automatic option uses a typical distribution\
    \ for proteins and equiprobable distribution for everything else."
  id: composition
  inputBinding:
    prefix: --composition
  type: string
- doc: The weight of prior data.  Default depends on alphabet length
  id: weight
  inputBinding:
    prefix: --weight
  type: string
- doc: 'Index of first position in sequence data (default: 1)'
  id: first_index
  inputBinding:
    prefix: --first-index
  type: string
- doc: Lower bound of sequence to display
  id: lower
  inputBinding:
    prefix: --lower
  type: string
- doc: Upper bound of sequence to display
  id: upper
  inputBinding:
    prefix: --upper
  type: string
- doc: Disregard lower case letters and only count upper case letters in sequences.
  id: ignore_lower_case
  inputBinding:
    prefix: --ignore-lower-case
  type: boolean
- doc: reverse sequences
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: complement nucleic sequences
  id: complement
  inputBinding:
    prefix: --complement
  type: boolean
- doc: reverse complement nucleic sequences
  id: rev_comp
  inputBinding:
    prefix: --revcomp
  type: boolean
- doc: Specify a standard logo size (small, medium (default), large)
  id: size
  inputBinding:
    prefix: --size
  type: string
- doc: 'Maximum number of logo stacks per logo line. (default: 40)'
  id: stacks_per_line
  inputBinding:
    prefix: --stacks-per-line
  type: string
- doc: Logo title text.
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: A figure label, e.g. '2a'
  id: label
  inputBinding:
    prefix: --label
  type: string
- doc: '/NO      Display sequence numbers along x-axis? (default: True)'
  id: show_x_axis
  inputBinding:
    prefix: --show-xaxis
  type: string
- doc: X-axis label
  id: xlabel
  inputBinding:
    prefix: --xlabel
  type: string
- doc: A comma separated list of custom stack annotations, e.g. '1,3,4,5,6,7'.  Annotation
    list must be same length as sequences.
  id: annotate
  inputBinding:
    prefix: --annotate
  type: string
- doc: '/NO  Draw X-axis numbers with vertical orientation (default: False).'
  id: rotate_numbers
  inputBinding:
    prefix: --rotate-numbers
  type: string
- doc: 'Distance between numbers on X-axis (default: 5)'
  id: number_interval
  inputBinding:
    prefix: --number-interval
  type: string
- doc: 'Height of yaxis in units. (Default: Maximum value with uninformative prior.)'
  id: yaxis
  inputBinding:
    prefix: --yaxis
  type: string
- doc: '/NO      Display entropy scale along y-axis? (default: True)'
  id: show_yaxis
  inputBinding:
    prefix: --show-yaxis
  type: string
- doc: Y-axis label (default depends on plot type and units)
  id: ylabel
  inputBinding:
    prefix: --ylabel
  type: string
- doc: '/NO       Label the ends of the sequence? (default: False)'
  id: show_ends
  inputBinding:
    prefix: --show-ends
  type: string
- doc: 'The fine print (default: weblogo version)'
  id: fine_print
  inputBinding:
    prefix: --fineprint
  type: string
- doc: 'Distance between ticmarks (default: 1.0)'
  id: tic_marks
  inputBinding:
    prefix: --ticmarks
  type: string
- doc: '/NO       Display error bars? (default: True)'
  id: error_bars
  inputBinding:
    prefix: --errorbars
  type: string
- doc: '/NO  Draw stacks with largest letters on top? (default: True)'
  id: reverse_stacks
  inputBinding:
    prefix: --reverse-stacks
  type: string
- doc: Specify a standard color scheme (auto, base pairing, charge, chemistry, classic,
    hydrophobicity, monochrome)
  id: color_scheme
  inputBinding:
    prefix: --color-scheme
  type: string
- doc: SYMBOLS DESCRIPTION  Specify symbol colors, e.g. --color black AG 'Purine'
    --color red TC 'Pyrimidine'
  id: color
  inputBinding:
    prefix: --color
  type: string
- doc: Symbol color if not otherwise specified.
  id: default_color
  inputBinding:
    prefix: --default-color
  type: string
- doc: 'Regular text font size in points (default: 10)'
  id: font_size
  inputBinding:
    prefix: --fontsize
  type: string
- doc: 'Title text font size in points (default: 12)'
  id: title_font_size
  inputBinding:
    prefix: --title-fontsize
  type: string
- doc: 'Small text font size in points (default: 6)'
  id: small_font_size
  inputBinding:
    prefix: --small-fontsize
  type: string
- doc: 'Axis numbers font size in points (default: 8)'
  id: number_font_size
  inputBinding:
    prefix: --number-fontsize
  type: string
- doc: 'Specify font for labels (default: ArialMT)'
  id: text_font
  inputBinding:
    prefix: --text-font
  type: string
- doc: 'Specify font for logo (default: Arial-BoldMT)'
  id: logo_font
  inputBinding:
    prefix: --logo-font
  type: string
- doc: 'Specify font for title (default: ArialMT)'
  id: title_font
  inputBinding:
    prefix: --title-font
  type: string
- doc: 'Width of a logo stack (default: 10.8)'
  id: stack_width
  inputBinding:
    prefix: --stack-width
  type: string
- doc: 'Ratio of stack height to width (default: 5)'
  id: aspect_ratio
  inputBinding:
    prefix: --aspect-ratio
  type: string
- doc: '/NO             Draw boxes around symbols? (default: no)'
  id: box
  inputBinding:
    prefix: --box
  type: string
- doc: 'Bitmap resolution in dots per inch (DPI). (Default: 96 DPI, except png_print,
    600 DPI) Low resolution bitmaps (DPI<300) are antialiased.'
  id: resolution
  inputBinding:
    prefix: --resolution
  type: string
- doc: '/NO     Scale the visible stack width by the fraction of symbols in the column?  (I.e.
    columns with many gaps of unknowns are narrow.)  (Default: yes)'
  id: scale_width
  inputBinding:
    prefix: --scale-width
  type: string
- doc: '/NO           Output additional diagnostic information. (Default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: string
- doc: 'Sets error bars display proportion (default: 0.9)'
  id: errorbar_fraction
  inputBinding:
    prefix: --errorbar-fraction
  type: string
- doc: 'Sets error bars width display proportion (default: 0.25)'
  id: errorbar_width_fraction
  inputBinding:
    prefix: --errorbar-width-fraction
  type: string
- doc: "Sets error bars' gray scale percentage (default: 0.75)"
  id: errorbar_gray
  inputBinding:
    prefix: --errorbar-gray
  type: string
- doc: Start a standalone WebLogo server for creating sequence logos.
  id: serve
  inputBinding:
    prefix: --serve
  type: boolean
- doc: 'Listen to this local port. (Default: 8080)'
  id: port
  inputBinding:
    prefix: --port
  type: string
