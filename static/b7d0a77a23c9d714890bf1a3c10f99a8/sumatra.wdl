version 1.0

task Sumatra {
  input {
    Boolean lL
    Boolean lL
    Boolean aA
    Boolean nN
    Boolean rR
    Boolean dD
    Boolean tT
    Boolean pP
    Boolean gG
    Boolean xX
    String? datasetDataset1
    String? datasetDataset2
  }
  command <<<
    sumatra \
      ~{datasetDataset1} \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-g" false="" gG} \
      ~{true="-x" false="" xX} \
      ~{datasetDataset2}
  >>>
}