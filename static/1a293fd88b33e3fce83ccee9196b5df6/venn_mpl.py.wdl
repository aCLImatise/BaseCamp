version 1.0

task VennMplpy {
  input {
    File? file_use_leftmost
    File? file_use_rightmost
    File? file_use_bottom
    String? labels
    String? colors
    File? output_file_save
    Boolean? test
  }
  command <<<
    venn_mpl_py \
      ~{if defined(file_use_leftmost) then ("-a " +  '"' + file_use_leftmost + '"') else ""} \
      ~{if defined(file_use_rightmost) then ("-b " +  '"' + file_use_rightmost + '"') else ""} \
      ~{if defined(file_use_bottom) then ("-c " +  '"' + file_use_bottom + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
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
    labels: "Optional comma-separated list of labels for a, b, and c"
    colors: "Comma-separated list of matplotlib-valid colors for circles\\na, b, and c. E.g., --colors=r,b,k"
    output_file_save: "Output file to save as. Extension is meaningful, e.g.,\\nout.pdf, out.png, out.svg. Default is \\\"out.png\\\""
    test: "run test, overriding all other options."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_save = "${in_output_file_save}"
  }
}