version 1.0

task PatSelNoFileInPatFile {
  input {
    String out_pat_file
  }
  command <<<
    pat_sel no_file in_pat_file \
      ~{out_pat_file}
  >>>
  parameter_meta {
    out_pat_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}