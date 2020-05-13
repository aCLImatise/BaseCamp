version 1.0

task SfsCodeNPOP {
  input {
    String? iterationsIterations
  }
  command <<<
    sfs_code NPOP \
      ~{iterationsIterations}
  >>>
}