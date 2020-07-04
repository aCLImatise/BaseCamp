version 1.0

task VennGchart.py {
  input {
    String? file_use_leftmost
    String? file_use_rightmost
    String? file_use_bottom
    String? colors
    String? labels
    Int? size
    String? output_file_save
    Boolean? test
  }
  command <<<
    venn_gchart.py \
      ~{if defined(file_use_leftmost) then ("-a " +  '"' + file_use_leftmost + '"') else ""} \
      ~{if defined(file_use_rightmost) then ("-b " +  '"' + file_use_rightmost + '"') else ""} \
      ~{if defined(file_use_bottom) then ("-c " +  '"' + file_use_bottom + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(output_file_save) then ("-o " +  '"' + output_file_save + '"') else ""} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    file_use_leftmost: "File to use for the left-most circle"
    file_use_rightmost: "File to use for the right-most circle"
    file_use_bottom: "File to use for the bottom circle"
    colors: "Optional comma-separated list of hex colors for circles a, b, and c. E.g. 00FF00,FF0000,0000FF"
    labels: "Optional comma-separated list of labels for a, b, and c"
    size: "Optional size of PNG, in pixels. Default is \"300x300\""
    output_file_save: "Output file to save as, in PNG format"
    test: "run test, overriding all other options."
  }
}