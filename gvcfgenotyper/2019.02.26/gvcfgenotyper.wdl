version 1.0

task Gvcfgenotyper {
  input {
    Boolean listList
    Boolean fastFastARef
    Boolean outputOutputFile
    Boolean logLogFile
    Boolean outputOutputType
    Boolean regionRegion
    Boolean maxMaxAlleles
  }
  command <<<
    gvcfgenotyper \
      ~{true="--list" false="" listList} \
      ~{true="--fasta-ref" false="" fastFastARef} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--log-file" false="" logLogFile} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--max-alleles" false="" maxMaxAlleles}
  >>>
}