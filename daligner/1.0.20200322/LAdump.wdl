version 1.0

task LAdump {
  input {
    Boolean cC
    Boolean dD
    Boolean tT
    Boolean lL
    Boolean oO
  }
  command <<<
    LAdump \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO}
  >>>
}