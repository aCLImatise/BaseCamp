version 1.0

task Summarizescafstatssh {
  input {
    String in
  }
  command <<<
    summarizescafstats_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}