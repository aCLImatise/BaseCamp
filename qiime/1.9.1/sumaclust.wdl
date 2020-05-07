version 1.0

task Sumaclust {
  input {
    Boolean lL
    Boolean lL
    Boolean aA
    Boolean nN
    Boolean rR
    Boolean dD
    Boolean tT
    Boolean eE
    Boolean rR
    Boolean pP
    Boolean sS
    Boolean oO
    Boolean gG
    Boolean bB
    Boolean oO
    Boolean fF
    Boolean fF
    String? datasetDataset
  }
  command <<<
    sumaclust \
      ~{datasetDataset} \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-e" false="" eE} \
      ~{true="-R" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-g" false="" gG} \
      ~{true="-B" false="" bB} \
      ~{true="-O" false="" oO} \
      ~{true="-F" false="" fF} \
      ~{true="-f" false="" fF}
  >>>
}