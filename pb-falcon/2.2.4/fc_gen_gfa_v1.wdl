version 1.0

task FcGenGfaV1 {
  input {
    String collected_gfa
  }
  command <<<
    fc_gen_gfa_v1 \
      ~{collected_gfa}
  >>>
  parameter_meta {
    collected_gfa: "Path to the file with collected and formatted data for generating the GFA"
  }
}