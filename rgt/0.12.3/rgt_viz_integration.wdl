version 1.0

task RgtVizIntegration {
  input {
    Boolean? i_html
    String? l_two_m
    String? define_folder_output
  }
  command <<<
    rgt-viz integration \
      ~{true="-ihtml" false="" i_html} \
      ~{if defined(l_two_m) then ("-l2m " +  '"' + l_two_m + '"') else ""} \
      ~{if defined(define_folder_output) then ("-o " +  '"' + define_folder_output + '"') else ""}
  >>>
  parameter_meta {
    i_html: "Integrate all the html files within the given directory and generate index.html for all plots."
    l_two_m: "Convert a given file list in txt format into a experimental matrix."
    define_folder_output: "Define the folder of the output file."
  }
}