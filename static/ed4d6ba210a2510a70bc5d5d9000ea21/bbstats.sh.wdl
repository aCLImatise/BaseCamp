version 1.0

task Bbstatssh {
  input {
    String stats_dots_h
    String in
  }
  command <<<
    bbstats_sh \
      ~{stats_dots_h} \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stats_dots_h: ""
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}