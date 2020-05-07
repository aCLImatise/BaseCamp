version 1.0

task Bam2svg.sh {
  input {
    Boolean filterFilter
    Boolean groupGroupBy
    Boolean helpHelpFormat
    Boolean outputOutput
    Boolean referenceReference
    Boolean showShowClipping
    Boolean vcfVcf
    Boolean widthWidth
  }
  command <<<
    bam2svg.sh \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--groupby" false="" groupGroupBy} \
      ~{true="--helpFormat" false="" helpHelpFormat} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--reference" false="" referenceReference} \
      ~{true="--showclipping" false="" showShowClipping} \
      ~{true="--vcf" false="" vcfVcf} \
      ~{true="--width" false="" widthWidth}
  >>>
}