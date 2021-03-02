version 1.0

task PatSelNoFileOutPatFile {
  input {
    String pat_sel
    String no_file
    String in_pat_file
    String out_pat_file
  }
  command <<<
    pat_sel no_file out_pat_file \
      ~{pat_sel} \
      ~{no_file} \
      ~{in_pat_file} \
      ~{out_pat_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pat_sel: ""
    no_file: ""
    in_pat_file: ""
    out_pat_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}