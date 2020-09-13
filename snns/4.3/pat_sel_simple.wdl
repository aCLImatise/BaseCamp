version 1.0

task PatSelSimple {
  input {
    String no_file
    String in_pat_file
    String out_pat_file
  }
  command <<<
    pat_sel_simple \
      ~{no_file} \
      ~{in_pat_file} \
      ~{out_pat_file}
  >>>
  parameter_meta {
    no_file: ""
    in_pat_file: ""
    out_pat_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}