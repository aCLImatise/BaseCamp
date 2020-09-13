version 1.0

task Weblogo {
  input {
    File? fin
    File? upload
    File? datatype
    File? f_out
    String? format
    String? sequence_type
    String? alphabet
    String? units
    Int? composition
    Int? weight
    Int? first_index
    String? lower
    String? upper
    Boolean? ignore_lower_case
    Boolean? reverse
    Boolean? complement
    Boolean? rev_comp
    Int? size
    Int? stacks_per_line
    String? title
    Int? label
    String? show_x_axis
    String? xlabel
    Int? annotate
    String? rotate_numbers
    Int? number_interval
    Int? yaxis
    String? show_yaxis
    String? ylabel
    String? show_ends
    String? fine_print
    Int? tic_marks
    String? error_bars
    String? reverse_stacks
    String? color_scheme
    String? color
    String? default_color
    Int? font_size
    Int? title_font_size
    Int? small_font_size
    Int? number_font_size
    String? text_font
    String? logo_font
    String? title_font
    Float? stack_width
    Int? aspect_ratio
    String? box
    Int? resolution
    String? scale_width
    String? debug
    Int? errorbar_fraction
    Int? errorbar_width_fraction
    Int? errorbar_gray
    Boolean? serve
    Int? port
    String sequence_data_dot_fa
    String sequence_logo_dot_eps
  }
  command <<<
    weblogo \
      ~{sequence_data_dot_fa} \
      ~{sequence_logo_dot_eps} \
      ~{if defined(fin) then ("--fin " +  '"' + fin + '"') else ""} \
      ~{if defined(upload) then ("--upload " +  '"' + upload + '"') else ""} \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if defined(f_out) then ("--fout " +  '"' + f_out + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(sequence_type) then ("--sequence-type " +  '"' + sequence_type + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(units) then ("--units " +  '"' + units + '"') else ""} \
      ~{if defined(composition) then ("--composition " +  '"' + composition + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(first_index) then ("--first-index " +  '"' + first_index + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if (ignore_lower_case) then "--ignore-lower-case" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(stacks_per_line) then ("--stacks-per-line " +  '"' + stacks_per_line + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(show_x_axis) then ("--show-xaxis " +  '"' + show_x_axis + '"') else ""} \
      ~{if defined(xlabel) then ("--xlabel " +  '"' + xlabel + '"') else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
      ~{if defined(rotate_numbers) then ("--rotate-numbers " +  '"' + rotate_numbers + '"') else ""} \
      ~{if defined(number_interval) then ("--number-interval " +  '"' + number_interval + '"') else ""} \
      ~{if defined(yaxis) then ("--yaxis " +  '"' + yaxis + '"') else ""} \
      ~{if defined(show_yaxis) then ("--show-yaxis " +  '"' + show_yaxis + '"') else ""} \
      ~{if defined(ylabel) then ("--ylabel " +  '"' + ylabel + '"') else ""} \
      ~{if defined(show_ends) then ("--show-ends " +  '"' + show_ends + '"') else ""} \
      ~{if defined(fine_print) then ("--fineprint " +  '"' + fine_print + '"') else ""} \
      ~{if defined(tic_marks) then ("--ticmarks " +  '"' + tic_marks + '"') else ""} \
      ~{if defined(error_bars) then ("--errorbars " +  '"' + error_bars + '"') else ""} \
      ~{if defined(reverse_stacks) then ("--reverse-stacks " +  '"' + reverse_stacks + '"') else ""} \
      ~{if defined(color_scheme) then ("--color-scheme " +  '"' + color_scheme + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(default_color) then ("--default-color " +  '"' + default_color + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(title_font_size) then ("--title-fontsize " +  '"' + title_font_size + '"') else ""} \
      ~{if defined(small_font_size) then ("--small-fontsize " +  '"' + small_font_size + '"') else ""} \
      ~{if defined(number_font_size) then ("--number-fontsize " +  '"' + number_font_size + '"') else ""} \
      ~{if defined(text_font) then ("--text-font " +  '"' + text_font + '"') else ""} \
      ~{if defined(logo_font) then ("--logo-font " +  '"' + logo_font + '"') else ""} \
      ~{if defined(title_font) then ("--title-font " +  '"' + title_font + '"') else ""} \
      ~{if defined(stack_width) then ("--stack-width " +  '"' + stack_width + '"') else ""} \
      ~{if defined(aspect_ratio) then ("--aspect-ratio " +  '"' + aspect_ratio + '"') else ""} \
      ~{if defined(box) then ("--box " +  '"' + box + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(scale_width) then ("--scale-width " +  '"' + scale_width + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(errorbar_fraction) then ("--errorbar-fraction " +  '"' + errorbar_fraction + '"') else ""} \
      ~{if defined(errorbar_width_fraction) then ("--errorbar-width-fraction " +  '"' + errorbar_width_fraction + '"') else ""} \
      ~{if defined(errorbar_gray) then ("--errorbar-gray " +  '"' + errorbar_gray + '"') else ""} \
      ~{if (serve) then "--serve" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    fin: "Sequence input file (default: stdin)"
    upload: "Upload input file from URL"
    datatype: "Type of multiple sequence alignment or\\nposition weight matrix file: (clustal, fasta,\\nmsf, genbank, nbrf, nexus, phylip, stockholm,\\nintelligenetics, table, array, transfac)"
    f_out: "Output file (default: stdout)"
    format: "Format of output: eps (default), png,\\npng_print, pdf, jpeg, svg, logodata"
    sequence_type: "The type of sequence data: 'protein', 'rna' or\\n'dna'."
    alphabet: "The set of symbols to count, e.g. 'AGTC'. All\\ncharacters not in the alphabet are ignored. If\\nneither the alphabet nor sequence-type are\\nspecified then weblogo will examine the input\\ndata and make an educated guess. See also\\n--sequence-type, --ignore-lower-case"
    units: "A unit of entropy ('bits' (default), 'nats',\\n'digits'), or a unit offree energy ('kT',\\n'kJ/mol', 'kcal/mol'), or 'probability' for\\nprobabilities"
    composition: "The expected composition of the sequences:\\n'auto' (default), 'equiprobable', 'none' (do\\nnot perform any compositional adjustment), a\\nCG percentage, a species name (e.g. 'E. coli',\\n'H. sapiens'), or an explicit distribution\\n(e.g. \\\"{'A':10, 'C':40, 'G':40, 'T':10}\\\"). The\\nautomatic option uses a typical distribution\\nfor proteins and equiprobable distribution for\\neverything else."
    weight: "The weight of prior data.  Default depends on\\nalphabet length"
    first_index: "Index of first position in sequence data\\n(default: 1)"
    lower: "Lower bound of sequence to display"
    upper: "Upper bound of sequence to display"
    ignore_lower_case: "Disregard lower case letters and only count\\nupper case letters in sequences."
    reverse: "reverse sequences"
    complement: "complement nucleic sequences"
    rev_comp: "reverse complement nucleic sequences"
    size: "Specify a standard logo size (small, medium\\n(default), large)"
    stacks_per_line: "Maximum number of logo stacks per logo line.\\n(default: 40)"
    title: "Logo title text."
    label: "A figure label, e.g. '2a'"
    show_x_axis: "Display sequence numbers along x-axis?\\n(default: True)"
    xlabel: "X-axis label"
    annotate: "A comma separated list of custom stack\\nannotations, e.g. '1,3,4,5,6,7'.  Annotation\\nlist must be same length as sequences."
    rotate_numbers: "Draw X-axis numbers with vertical orientation\\n(default: False)."
    number_interval: "Distance between numbers on X-axis (default:\\n5)"
    yaxis: "Height of yaxis in units. (Default: Maximum\\nvalue with uninformative prior.)"
    show_yaxis: "Display entropy scale along y-axis? (default:\\nTrue)"
    ylabel: "Y-axis label (default depends on plot type and\\nunits)"
    show_ends: "Label the ends of the sequence? (default:\\nFalse)"
    fine_print: "The fine print (default: weblogo version)"
    tic_marks: "Distance between ticmarks (default: 1.0)"
    error_bars: "Display error bars? (default: True)"
    reverse_stacks: "Draw stacks with largest letters on top?\\n(default: True)"
    color_scheme: "Specify a standard color scheme (auto, base\\npairing, charge, chemistry, classic,\\nhydrophobicity, monochrome)"
    color: "SYMBOLS DESCRIPTION\\nSpecify symbol colors, e.g. --color black AG\\n'Purine' --color red TC 'Pyrimidine'"
    default_color: "Symbol color if not otherwise specified."
    font_size: "Regular text font size in points (default: 10)"
    title_font_size: "Title text font size in points (default: 12)"
    small_font_size: "Small text font size in points (default: 6)"
    number_font_size: "Axis numbers font size in points (default: 8)"
    text_font: "Specify font for labels (default: ArialMT)"
    logo_font: "Specify font for logo (default: Arial-BoldMT)"
    title_font: "Specify font for title (default: ArialMT)"
    stack_width: "Width of a logo stack (default: 10.8)"
    aspect_ratio: "Ratio of stack height to width (default: 5)"
    box: "Draw boxes around symbols? (default: no)"
    resolution: "Bitmap resolution in dots per inch (DPI).\\n(Default: 96 DPI, except png_print, 600 DPI)\\nLow resolution bitmaps (DPI<300) are\\nantialiased."
    scale_width: "Scale the visible stack width by the fraction\\nof symbols in the column?  (I.e. columns with\\nmany gaps of unknowns are narrow.)  (Default:\\nyes)"
    debug: "Output additional diagnostic information.\\n(Default: False)"
    errorbar_fraction: "Sets error bars display proportion (default:\\n0.9)"
    errorbar_width_fraction: "Sets error bars width display proportion\\n(default: 0.25)"
    errorbar_gray: "Sets error bars' gray scale percentage\\n(default: 0.75)"
    serve: "Start a standalone WebLogo server for creating\\nsequence logos."
    port: "Listen to this local port. (Default: 8080)"
    sequence_data_dot_fa: ""
    sequence_logo_dot_eps: ""
  }
  output {
    File out_stdout = stdout()
    File out_f_out = "${in_f_out}"
  }
}