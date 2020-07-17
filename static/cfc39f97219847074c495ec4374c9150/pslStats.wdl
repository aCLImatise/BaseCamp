version 1.0

task PslStats {
  input {
    String psl
    String stats_out
  }
  command <<<
    pslStats \
      ~{psl} \
      ~{stats_out}
  >>>
  parameter_meta {
    psl: ""
    stats_out: ""
  }
}