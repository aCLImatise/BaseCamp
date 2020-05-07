version 1.0

task CleanGenes {
  input {
    String refseqRefseq
    String offsetOffset5
    String offsetOffset3
    String logLog
    String machineMachineLog
    String statsStats
    String discardsDiscards
    Boolean noNoOutput
    String? gffGffFname
    String? msaMsaFname
  }
  command <<<
    clean_genes \
      ~{gffGffFname} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{if defined(offsetOffset5) then ("--offset5 " +  '"' + offsetOffset5 + '"') else ""} \
      ~{if defined(offsetOffset3) then ("--offset3 " +  '"' + offsetOffset3 + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(machineMachineLog) then ("--machine-log " +  '"' + machineMachineLog + '"') else ""} \
      ~{if defined(statsStats) then ("--stats " +  '"' + statsStats + '"') else ""} \
      ~{if defined(discardsDiscards) then ("--discards " +  '"' + discardsDiscards + '"') else ""} \
      ~{true="--no-output" false="" noNoOutput} \
      ~{msaMsaFname}
  >>>
}