version 1.0

task Crisprtools {
  input {
    String? mergeMerge
    String? helpHelp
    String? extractExtract
    String? filterFilter
    String? sanitiseSanitise
    String? statStat
    String? rmRm
  }
  command <<<
    crisprtools \
      ~{mergeMerge} \
      ~{helpHelp} \
      ~{extractExtract} \
      ~{filterFilter} \
      ~{sanitiseSanitise} \
      ~{statStat} \
      ~{rmRm}
  >>>
}