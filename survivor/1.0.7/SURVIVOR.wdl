version 1.0

task SURVIVOR {
  input {
    String? simsSimsV
    String? scanScanReads
    String? simSimReads
    String? evalEval
    String? filterFilter
    String? statsStats
    String? compCompMummer
    String? binBinCov
    String? vcfVcfToBed
    String? bedBedToVcf
    String? smapSmapToVcf
    String? bedBedPeToVcf
    String? hapHapCutToVcf
    String? convertConvertAssemblyTics
  }
  command <<<
    SURVIVOR \
      ~{simsSimsV} \
      ~{filterFilter} \
      ~{binBinCov} \
      ~{scanScanReads} \
      ~{statsStats} \
      ~{vcfVcfToBed} \
      ~{simSimReads} \
      ~{compCompMummer} \
      ~{bedBedToVcf} \
      ~{evalEval} \
      ~{smapSmapToVcf} \
      ~{bedBedPeToVcf} \
      ~{hapHapCutToVcf} \
      ~{convertConvertAssemblyTics}
  >>>
}