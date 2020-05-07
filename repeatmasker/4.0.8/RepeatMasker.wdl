version 1.0

task RepeatMasker {
  input {
    String? swSw
    String? chr1Chr14622259
    String? chr1Chr14622259
    String? ivIv
    String? ivIv
    String? alAlUs
    String? mirsMirs
    String? malMalRs
    String? erErVl
    String? ervErvClassI
    String? ervErvClassIi
    String? mer1Mer1Type
    String? mer2Mer2Type
    String? swSw
  }
  command <<<
    RepeatMasker \
      ~{swSw} \
      ~{chr1Chr14622259} \
      ~{chr1Chr14622259} \
      ~{ivIv} \
      ~{ivIv} \
      ~{alAlUs} \
      ~{malMalRs} \
      ~{mer1Mer1Type} \
      ~{swSw} \
      ~{mirsMirs} \
      ~{erErVl} \
      ~{mer2Mer2Type} \
      ~{ervErvClassI} \
      ~{ervErvClassIi}
  >>>
}