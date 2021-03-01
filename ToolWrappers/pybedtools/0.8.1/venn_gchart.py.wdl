version 1.0

task VennGchartpy {
  input {
    File? file_use_leftmost
    File? file_use_rightmost
    File? file_use_bottom
    Int? colors
    String? labels
    Int? size
    File? output_file_save
    Boolean? test
  }
  command <<<
    venn_gchart_py \
      ~{if defined(file_use_leftmost) then ("-a " +  '"' + file_use_leftmost + '"') else ""} \
      ~{if defined(file_use_rightmost) then ("-b " +  '"' + file_use_rightmost + '"') else ""} \
      ~{if defined(file_use_bottom) then ("-c " +  '"' + file_use_bottom + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(output_file_save) then ("-o " +  '"' + output_file_save + '"') else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_use_leftmost: "File to use for the left-most circle"
    file_use_rightmost: "File to use for the right-most circle"
    file_use_bottom: "File to use for the bottom circle"
    colors: "Optional comma-separated list of hex colors for circles a,\\nb, and c. E.g. 00FF00,FF0000,0000FF"
    labels: "Optional comma-separated list of labels for a, b, and c"
    size: "Optional size of PNG, in pixels. Default is \\\"300x300\\\""
    output_file_save: "Output file to save as, in PNG format"
    test: "run test, overriding all other options."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_save = "${in_output_file_save}"
  }
}