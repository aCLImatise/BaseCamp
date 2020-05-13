version 1.0

task SplitFastx.py {
  input {
    String iI
    String oO
    String bB
    String? inputInputFastX
    String? outputOutputDir
  }
  command <<<
    split_fastx.py \
      ~{inputInputFastX} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{outputOutputDir}
  >>>
}