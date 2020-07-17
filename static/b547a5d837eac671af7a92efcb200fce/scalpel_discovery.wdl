version 1.0

task ScalpelDiscovery {
  input {
    Boolean? verbose
    Boolean? single
    Boolean? de_novo
    Boolean? somatic
    String var_command
  }
  command <<<
    scalpel-discovery \
      ~{var_command} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--single" false="" single} \
      ~{true="--denovo" false="" de_novo} \
      ~{true="--somatic" false="" somatic}
  >>>
  parameter_meta {
    verbose: ": verbose mode"
    single: ": single exome study "
    de_novo: ": family study (mom,dad,affected,sibling)"
    somatic: ": normal/tumor study"
    var_command: ""
  }
}