version 1.0

task Bbstats.sh {
  input {
    String stats_dots_h
    String in
  }
  command <<<
    bbstats.sh \
      ~{stats_dots_h} \
      ~{in}
  >>>
  parameter_meta {
    stats_dots_h: ""
    in: ""
  }
}