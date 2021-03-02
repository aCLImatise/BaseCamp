version 1.0

task Summarizescafstatssh {
  input {
    String in
  }
  command <<<
    summarizescafstats_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}