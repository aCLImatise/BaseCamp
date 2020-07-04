version 1.0

task GimmeThreshold {
  input {
    Boolean? h
    String gimme
    String subcommand
    String threshold
    String pfm_file
    String f_a_file
    String fpr
  }
  command <<<
    gimme threshold \
      ~{gimme} \
      ~{subcommand} \
      ~{threshold} \
      ~{pfm_file} \
      ~{f_a_file} \
      ~{fpr} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    h: ""
    gimme: ""
    subcommand: ""
    threshold: ""
    pfm_file: ""
    f_a_file: ""
    fpr: ""
  }
}