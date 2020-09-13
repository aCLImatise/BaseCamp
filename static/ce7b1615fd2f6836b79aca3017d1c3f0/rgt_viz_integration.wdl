version 1.0

task RgtvizIntegration {
  input {
    Boolean? i_html
    Int? l_two_m
    String? o
    String matrix_dot
  }
  command <<<
    rgt_viz integration \
      ~{matrix_dot} \
      ~{if (i_html) then "-ihtml" else ""} \
      ~{if defined(l_two_m) then ("-l2m " +  '"' + l_two_m + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i_html: "Integrate all the html files within the given directory and\\ngenerate index.html for all plots."
    l_two_m: "Convert a given file list in txt format into a experimental"
    o: ""
    matrix_dot: "-o O        Define the folder of the output file."
  }
  output {
    File out_stdout = stdout()
  }
}