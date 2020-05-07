version 1.0

task Sfold {
  input {
    Boolean optionsOptions
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
  }
  command <<<
    sfold \
      ~{seqfile1Seqfile1} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqfile2Seqfile2}
  >>>
}