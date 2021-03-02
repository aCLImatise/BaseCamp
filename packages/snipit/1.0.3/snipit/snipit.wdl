version 1.0

task Snipit {
  input {
    String? reference
    File? labels
    String? l_header
    Directory? output_dir
    File? output_file
    String? format
    String? height
    String? width
    Int? size_option
    String? colour_palette
    String alignment
  }
  command <<<
    snipit \
      ~{alignment} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(l_header) then ("--l-header " +  '"' + l_header + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(size_option) then ("--size-option " +  '"' + size_option + '"') else ""} \
      ~{if defined(colour_palette) then ("--colour-palette " +  '"' + colour_palette + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snipit:1.0.3--py_0"
  }
  parameter_meta {
    reference: "Indicates which sequence in the alignment is the\\nreference (by sequence ID). Default: first sequence in\\nalignment"
    labels: "Optional csv file of labels to show in output snipit\\nplot. Default: sequence names"
    l_header: "Comma separated string of column headers in label csv.\\nFirst field indicates sequence name column, second the\\nlabel column. Default: 'name,label'"
    output_dir: "Output directory. Default: current working directory"
    output_file: "Output file name stem. Default: snp_plot"
    format: "Format options (png, jpg, pdf, svg, tiff) Default: png"
    height: "Overwrite the default figure height"
    width: "Overwrite the default figure width"
    size_option: "Specify options for sizing. Options: expand, scale"
    colour_palette: "Specify colour palette. Options: primary, classic,\\npurine-pyrimidine, greyscale, wes, verity\\n"
    alignment: "Input alignment fasta file"
  }
  output {
    File out_stdout = stdout()
    File out_labels = "${in_labels}"
    Directory out_output_dir = "${in_output_dir}"
    File out_output_file = "${in_output_file}"
  }
}