version 1.0

task VarscanSomaticFilter {
  input {
    Boolean minMinCoverage
    Boolean minMinReadS2
    Boolean minMinStrands2
    Boolean minMinVarFreq
    Boolean pPValue
    Boolean inInDelFile
    Boolean outputOutputFile
  }
  command <<<
    varscan somaticFilter \
      ~{true="--min-coverage" false="" minMinCoverage} \
      ~{true="--min-reads2" false="" minMinReadS2} \
      ~{true="--min-strands2" false="" minMinStrands2} \
      ~{true="--min-var-freq" false="" minMinVarFreq} \
      ~{true="--p-value" false="" pPValue} \
      ~{true="--indel-file" false="" inInDelFile} \
      ~{true="--output-file" false="" outputOutputFile}
  >>>
}