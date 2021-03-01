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
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    stats_dots_h: ""
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}