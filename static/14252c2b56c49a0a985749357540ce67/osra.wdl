version 1.0

task Osra {
  input {
    Boolean? learn
    File? write
    File? preview
    Boolean? dimensions_size_dimensions
    File? write_recognized_structures_image
    Boolean? verbose
    Boolean? debug
    File? super_atom
    File? spelling
    Boolean? bond
    Boolean? coordinates
    Boolean? page
    Boolean? guess
    Boolean? print
    String? embedded_format
    String? format
    Boolean? adaptive
    Boolean? jaggy
    Boolean? default_rounds_default
    Int? threshold
    Boolean? default_auto_
    Boolean? negate
    Int? rotate
    Int three_zero_zero_x_four_zero_zero
    String config_file
    String inch_i_slash_smi_slash_can
    String rounds
  }
  command <<<
    osra \
      ~{three_zero_zero_x_four_zero_zero} \
      ~{config_file} \
      ~{inch_i_slash_smi_slash_can} \
      ~{rounds} \
      ~{if (learn) then "--learn" else ""} \
      ~{if defined(write) then ("--write " +  '"' + write + '"') else ""} \
      ~{if defined(preview) then ("--preview " +  '"' + preview + '"') else ""} \
      ~{if (dimensions_size_dimensions) then "-s" else ""} \
      ~{if defined(write_recognized_structures_image) then ("--output " +  '"' + write_recognized_structures_image + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(super_atom) then ("--superatom " +  '"' + super_atom + '"') else ""} \
      ~{if defined(spelling) then ("--spelling " +  '"' + spelling + '"') else ""} \
      ~{if (bond) then "--bond" else ""} \
      ~{if (coordinates) then "--coordinates" else ""} \
      ~{if (page) then "--page" else ""} \
      ~{if (guess) then "--guess" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if defined(embedded_format) then ("--embedded-format " +  '"' + embedded_format + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (adaptive) then "--adaptive" else ""} \
      ~{if (jaggy) then "--jaggy" else ""} \
      ~{if (default_rounds_default) then "-u" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (default_auto_) then "-r" else ""} \
      ~{if (negate) then "--negate" else ""} \
      ~{if defined(rotate) then ("--rotate " +  '"' + rotate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    learn: "Print out all structure guesses with confidence parameters"
    write: "Write recognized structures to text file"
    preview: "Preview Image"
    dimensions_size_dimensions: "<dimensions, 300x400>,  --size <dimensions, 300x400>\\nResize image on output"
    write_recognized_structures_image: "Write recognized structures to image files with given prefix"
    verbose: "Be verbose and print the program flow"
    debug: "Print out debug information on spelling corrections"
    super_atom: "Superatom label map to SMILES"
    spelling: "Spelling correction dictionary"
    bond: "Show average bond length in pixels (only for SDF/SMI/CAN output\\nformat)"
    coordinates: "Show surrounding box coordinates (only for SDF/SMI/CAN output format)"
    page: "Show page number for PDF/PS/TIFF documents (only for SDF/SMI/CAN\\noutput format)"
    guess: "Print out resolution guess"
    print: "Print out confidence estimate"
    embedded_format: "Embedded format"
    format: "Output format"
    adaptive: "Adaptive thresholding pre-processing, useful for low light/low\\ncontrast images"
    jaggy: "Additional thinning/scaling down of low quality documents"
    default_rounds_default: "<default: 0 rounds>,  --unpaper <default: 0 rounds>\\nPre-process image with unpaper algorithm, rounds"
    threshold: "Gray level threshold"
    default_auto_: "<default: auto>,  --resolution <default: auto>\\nResolution in dots per inch"
    negate: "Invert color (white on black)"
    rotate: "Rotate image clockwise by specified number of degrees"
    three_zero_zero_x_four_zero_zero: ""
    config_file: ""
    inch_i_slash_smi_slash_can: ""
    rounds: ""
  }
  output {
    File out_stdout = stdout()
  }
}