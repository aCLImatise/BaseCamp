version 1.0

task UmisSbFilter {
  input {
    String files_dot
  }
  command <<<
    umis sb_filter \
      ~{files_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    files_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}