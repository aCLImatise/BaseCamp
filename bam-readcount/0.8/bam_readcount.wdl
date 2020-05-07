version 1.0

task BamReadcount {
  input {
    Boolean vV
    Boolean qQ
    Boolean bB
    Boolean dD
    Boolean lL
    Boolean fF
    Boolean dD
    Boolean pP
    Boolean wW
    Boolean iI
    String? optionsOptions
    String? bamBamFile
    String? regionRegion
  }
  command <<<
    bam-readcount \
      ~{optionsOptions} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="-b" false="" bB} \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{true="-f" false="" fF} \
      ~{true="-D" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{true="-w" false="" wW} \
      ~{true="-i" false="" iI} \
      ~{bamBamFile} \
      ~{regionRegion}
  >>>
}