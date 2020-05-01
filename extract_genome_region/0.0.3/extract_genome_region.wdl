version 1.0

task ExtractGenomeRegion {
  input {
    Boolean namingNaming
    String? recordRecordName
    String? scaffoldScaffold
    String? startStart
    String? stopStop
    String? leftLeftBfr
    String? rightRightBfr
    String? csvCsv
    String? seqSeqRange
    String? csvCsvSeqRange
  }
  command <<<
    extract_genome_region \
      ~{recordRecordName} \
      ~{csvCsv} \
      ~{true="--naming" false="" namingNaming} \
      ~{scaffoldScaffold} \
      ~{seqSeqRange} \
      ~{startStart} \
      ~{csvCsvSeqRange} \
      ~{stopStop} \
      ~{leftLeftBfr} \
      ~{rightRightBfr}
  >>>
}