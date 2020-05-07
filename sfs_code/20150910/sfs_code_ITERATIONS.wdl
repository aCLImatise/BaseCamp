version 1.0

task SfsCodeITERATIONS {
  input {
    String? nNPop
    String? iterationsIterations
  }
  command <<<
    sfs_code ITERATIONS \
      ~{nNPop} \
      ~{iterationsIterations}
  >>>
}