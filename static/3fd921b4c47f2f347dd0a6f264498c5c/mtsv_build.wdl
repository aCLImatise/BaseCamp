version 1.0

task MtsvBuild {
  input {
    Boolean vV
    String fastFastA
    String sampleSampleInterval
    String indexIndex
  }
  command <<<
    mtsv-build \
      ~{true="-v" false="" vV} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(sampleSampleInterval) then ("--sample-interval " +  '"' + sampleSampleInterval + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""}
  >>>
}