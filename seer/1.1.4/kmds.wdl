version 1.0

task Kmds {
  input {
    Boolean kK
    Boolean pP
    Boolean oO
    Boolean noNoMds
    Boolean writeWriteDistances
    String mdsMdsConcat
    String pcPc
    String sizeSize
    String threadsThreads
    Boolean noNoFiltering
    String maxMaxLength
    String mafMaf
    String minMinWords
  }
  command <<<
    kmds \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{true="--no_mds" false="" noNoMds} \
      ~{true="--write_distances" false="" writeWriteDistances} \
      ~{if defined(mdsMdsConcat) then ("--mds_concat " +  '"' + mdsMdsConcat + '"') else ""} \
      ~{if defined(pcPc) then ("--pc " +  '"' + pcPc + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--no_filtering" false="" noNoFiltering} \
      ~{if defined(maxMaxLength) then ("--max_length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(mafMaf) then ("--maf " +  '"' + mafMaf + '"') else ""} \
      ~{if defined(minMinWords) then ("--min_words " +  '"' + minMinWords + '"') else ""}
  >>>
}