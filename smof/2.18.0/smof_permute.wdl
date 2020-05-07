version 1.0

task SmofPermute {
  input {
    Int wordWordSize
    Int startStartOffset
    Int endEndOffset
    String seedSeed
    String? inputInput
  }
  command <<<
    smof permute \
      ~{inputInput} \
      ~{if defined(wordWordSize) then ("--word-size " +  '"' + wordWordSize + '"') else ""} \
      ~{if defined(startStartOffset) then ("--start-offset " +  '"' + startStartOffset + '"') else ""} \
      ~{if defined(endEndOffset) then ("--end-offset " +  '"' + endEndOffset + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}