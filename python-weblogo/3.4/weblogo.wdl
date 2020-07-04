version 1.0

task Weblogo {
  input {
    File? fin
    String? datatype
    File? f_out
    String? format
    String? sequence_type
    String? alphabet
    String? units
    String? composition
    String? weight
    String? first_index
    String? lower
    String? upper
    Boolean? ignore_lower_case
    Boolean? reverse
    Boolean? complement
    Boolean? rev_comp
    String? size
    String? stacks_per_line
    String? title
    String? label
    String? show_x_axis
    String? xlabel
    String? annotate
    String? yaxis
    String? show_yaxis
    String? ylabel
    String? show_ends
    String? fine_print
    String? tic_marks
    String? error_bars
    String? reverse_stacks
    String? color_scheme
    String? color
    String? default_color
    String? stack_width
    String? aspect_ratio
    String? box
    String? resolution
    String? scale_width
    String? debug
    Boolean? serve
    String? port
    String sequence_data_dot_fa
    String sequence_logo_dot_eps
  }
  command <<<
    weblogo \
      ~{sequence_data_dot_fa} \
      ~{sequence_logo_dot_eps} \
      ~{if defined(fin) then ("--fin " +  '"' + fin + '"') else ""} \
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
      ~{true="--ignore-lower-case" false="" ignore_lower_case} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--complement" false="" complement} \
      ~{true="--revcomp" false="" rev_comp} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(stacks_per_line) then ("--stacks-per-line " +  '"' + stacks_per_line + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(show_x_axis) then ("--show-xaxis " +  '"' + show_x_axis + '"') else ""} \
      ~{if defined(xlabel) then ("--xlabel " +  '"' + xlabel + '"') else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
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
      ~{if defined(stack_width) then ("--stack-width " +  '"' + stack_width + '"') else ""} \
      ~{if defined(aspect_ratio) then ("--aspect-ratio " +  '"' + aspect_ratio + '"') else ""} \
      ~{if defined(box) then ("--box " +  '"' + box + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(scale_width) then ("--scale-width " +  '"' + scale_width + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{true="--serve" false="" serve} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    fin: "Sequence input file (default: stdin)"
    datatype: "Type of multiple sequence alignment or position weight matrix file: (clustal, fasta, plain, msf, genbank, nbrf, nexus, phylip, stockholm, intelligenetics, table, array, transfac)"
    f_out: "Output file (default: stdout)"
    format: "Format of output: eps (default), png, png_print, pdf, jpeg, svg, logodata"
    sequence_type: "The type of sequence data: 'protein', 'rna' or 'dna'."
    alphabet: "The set of symbols to count, e.g. 'AGTC'. All characters not in the alphabet are ignored. If neither the alphabet nor sequence-type are specified then weblogo will examine the input data and make an educated guess. See also --sequence-type, --ignore-lower-case"
    units: "A unit of entropy ('bits' (default), 'nats', 'digits'), or a unit of free energy ('kT', 'kJ/mol', 'kcal/mol'), or 'probability' for probabilities"
    composition: "The expected composition of the sequences: 'auto' (default), 'equiprobable', 'none' (do not perform any compositional adjustment), a CG percentage, a species name (e.g. 'E. coli', 'H. sapiens'), or an explicit distribution (e.g. \"{'A':10, 'C':40, 'G':40, 'T':10}\"). The automatic option uses a typical distribution for proteins and equiprobable distribution for everything else."
    weight: "The weight of prior data.  Default depends on alphabet length"
    first_index: "Index of first position in sequence data (default: 1)"
    lower: "Lower bound of sequence to display"
    upper: "Upper bound of sequence to display"
    ignore_lower_case: "Disregard lower case letters and only count upper case letters in sequences."
    reverse: "reverse sequences"
    complement: "complement nucleic sequences"
    rev_comp: "reverse complement nucleic sequences"
    size: "Specify a standard logo size (small, medium (default), large)"
    stacks_per_line: "Maximum number of logo stacks per logo line. (default: 40)"
    title: "Logo title text."
    label: "A figure label, e.g. '2a'"
    show_x_axis: "Display sequence numbers along x-axis? (default: True)"
    xlabel: "X-axis label"
    annotate: "A comma separated list of custom stack annotations, e.g. '1,3,4,5,6,7'.  Annotation list must be same length as sequences."
    yaxis: "Height of yaxis in units. (Default: Maximum value with uninformative prior.)"
    show_yaxis: "Display entropy scale along y-axis? (default: True)"
    ylabel: "Y-axis label (default depends on plot type and units)"
    show_ends: "Label the ends of the sequence? (default: False)"
    fine_print: "The fine print (default: weblogo version)"
    tic_marks: "Distance between ticmarks (default: 1.0)"
    error_bars: "Display error bars? (default: True)"
    reverse_stacks: "Draw stacks with largest letters on top? (default: True)"
    color_scheme: "Specify a standard color scheme (auto, base pairing, charge, chemistry, classic, hydrophobicity, monochrome)"
    color: "SYMBOLS DESCRIPTION  Specify symbol colors, e.g. --color black AG 'Purine' --color red TC 'Pyrimidine'"
    default_color: "Symbol color if not otherwise specified."
    stack_width: "Width of a logo stack (default: 10.8)"
    aspect_ratio: "Ratio of stack height to width (default: 5)"
    box: "Draw boxes around symbols? (default: no)"
    resolution: "Bitmap resolution in dots per inch (DPI). (Default: 96 DPI, except png_print, 600 DPI) Low resolution bitmaps (DPI<300) are antialiased."
    scale_width: "Scale the visible stack width by the fraction of symbols in the column?  (I.e. columns with many gaps of unknowns are narrow.)  (Default: yes)"
    debug: "Output additional diagnostic information. (Default: False)"
    serve: "Start a standalone WebLogo server for creating sequence logos."
    port: "Listen to this local port. (Default: 8080)"
    sequence_data_dot_fa: ""
    sequence_logo_dot_eps: ""
  }
}