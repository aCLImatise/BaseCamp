version 1.0

task ScalpelExport {
  input {
    Boolean? verbose
    Boolean? single
    Boolean? de_novo
    Boolean? somatic
    String var_command
  }
  command <<<
    scalpel-export \
      ~{var_command} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--single" false="" single} \
      ~{true="--denovo" false="" de_novo} \
      ~{true="--somatic" false="" somatic}
  >>>
  parameter_meta {
    verbose: ": verbose mode"
    single: ": export variants for single exome study "
    de_novo: ": export variants for family study (mom,dad,affected,sibling)"
    somatic: ": export variants for normal/tumor study"
    var_command: ""
  }
}