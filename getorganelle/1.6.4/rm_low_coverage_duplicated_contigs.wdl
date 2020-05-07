version 1.0

task RmLowCoverageDuplicatedContigs.py {
  input {
    String covCovT
    Int lenLenT
    Boolean blurBlur
    Boolean keepKeepTemp
    String whichWhichBlast
    String oO
    String threadsThreads
  }
  command <<<
    rm_low_coverage_duplicated_contigs.py \
      ~{if defined(covCovT) then ("--cov-t " +  '"' + covCovT + '"') else ""} \
      ~{if defined(lenLenT) then ("--len-t " +  '"' + lenLenT + '"') else ""} \
      ~{true="--blur" false="" blurBlur} \
      ~{true="--keep-temp" false="" keepKeepTemp} \
      ~{if defined(whichWhichBlast) then ("--which-blast " +  '"' + whichWhichBlast + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}