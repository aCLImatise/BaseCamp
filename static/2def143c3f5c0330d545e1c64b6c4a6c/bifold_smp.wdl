version 1.0

task BifoldSmp {
  input {
    String? bifoldBifold
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
    String? ctCtFile
  }
  command <<<
    bifold-smp \
      ~{bifoldBifold} \
      ~{seqfile1Seqfile1} \
      ~{seqfile2Seqfile2} \
      ~{ctCtFile}
  >>>
}