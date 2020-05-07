version 1.0

task MedakaCompressBam {
  input {
    String? bamBamInput
    String? bamBamOutput
    String? refRefFname
  }
  command <<<
    medaka compress_bam \
      ~{bamBamInput} \
      ~{bamBamOutput} \
      ~{refRefFname}
  >>>
}