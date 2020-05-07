version 1.0

task ShowSnps {
  input {
    String? deltaDeltaFile
  }
  command <<<
    show-snps \
      ~{deltaDeltaFile}
  >>>
}