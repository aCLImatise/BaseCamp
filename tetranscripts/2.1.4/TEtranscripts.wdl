version 1.0

task TEtranscripts {
  input {
    String tT
    String cC
    String gtfGtf
    String teTe
    Boolean formatFormat
    Boolean strandedStranded
    Boolean modeMode
    Boolean projectProject
    Boolean pP
    Boolean fF
    Boolean minMinRead
    Boolean deDeSeq
    Boolean nN
    Boolean sortSortByPos
    Boolean iI
    Boolean maxMaxL
    Boolean minMinL
    Boolean lL
    Boolean verboseVerbose
  }
  command <<<
    TEtranscripts \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gtfGtf) then ("--GTF " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(teTe) then ("--TE " +  '"' + teTe + '"') else ""} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--stranded" false="" strandedStranded} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--project" false="" projectProject} \
      ~{true="-p" false="" pP} \
      ~{true="-f" false="" fF} \
      ~{true="--minread" false="" minMinRead} \
      ~{true="--DESeq" false="" deDeSeq} \
      ~{true="-n" false="" nN} \
      ~{true="--sortByPos" false="" sortSortByPos} \
      ~{true="-i" false="" iI} \
      ~{true="--maxL" false="" maxMaxL} \
      ~{true="--minL" false="" minMinL} \
      ~{true="-L" false="" lL} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}