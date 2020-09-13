version 1.0

task Countsam {
  input {
    String in_file_dots_am
    String ref_flat_dot_txt
  }
  command <<<
    countsam \
      ~{in_file_dots_am} \
      ~{ref_flat_dot_txt}
  >>>
  parameter_meta {
    in_file_dots_am: ""
    ref_flat_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}