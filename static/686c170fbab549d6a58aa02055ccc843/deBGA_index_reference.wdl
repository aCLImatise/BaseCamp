version 1.0

task DeBGAIndexReference.fasta {
  input {
    String? indexIndexRoute
  }
  command <<<
    deBGA index reference.fasta \
      ~{indexIndexRoute}
  >>>
}