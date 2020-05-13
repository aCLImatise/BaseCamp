version 1.0

task MakeBatchForIterativelyMappingAssembling.py {
  input {
    String sS
    String rR
    String tT
    String kK
    String oO
    Boolean unUn
    String randomRandomSeed
    String whichWhichBowtie2
    String whichWhichSpades
  }
  command <<<
    make_batch_for_iteratively_mapping_assembling.py \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--un" false="" unUn} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(whichWhichBowtie2) then ("--which-bowtie2 " +  '"' + whichWhichBowtie2 + '"') else ""} \
      ~{if defined(whichWhichSpades) then ("--which-spades " +  '"' + whichWhichSpades + '"') else ""}
  >>>
}