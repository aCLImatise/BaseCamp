version 1.0

task FidoChooseParameters {
  input {
    Boolean pP
    Boolean aA
    Boolean gG
    String cC
    String? graphGraphFile
    String? targetTargetDecoyFile
  }
  command <<<
    FidoChooseParameters \
      ~{graphGraphFile} \
      ~{true="-p" false="" pP} \
      ~{true="-a" false="" aA} \
      ~{true="-g" false="" gG} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{targetTargetDecoyFile}
  >>>
}