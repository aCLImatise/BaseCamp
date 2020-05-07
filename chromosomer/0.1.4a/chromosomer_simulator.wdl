version 1.0

task ChromosomerSimulator {
  input {
    String gapGapSize
    String unplacedUnplaced
    String prefixPrefix
    String? frFrNum
    String? frFrLen
    String? chrChrNum
    String? outputOutputDir
  }
  command <<<
    chromosomer simulator \
      ~{frFrNum} \
      ~{if defined(gapGapSize) then ("--gap_size " +  '"' + gapGapSize + '"') else ""} \
      ~{if defined(unplacedUnplaced) then ("--unplaced " +  '"' + unplacedUnplaced + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{frFrLen} \
      ~{chrChrNum} \
      ~{outputOutputDir}
  >>>
}