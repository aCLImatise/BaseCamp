version 1.0

task Sstacks {
  input {
    Boolean inInPath
    Boolean popPopMap
    Boolean sampleSample
    Boolean catalogCatalog
    Boolean threadsThreads
    Boolean outOutPath
    Boolean xX
    Boolean disableDisableGapped
  }
  command <<<
    sstacks \
      ~{true="--in-path" false="" inInPath} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="--sample" false="" sampleSample} \
      ~{true="--catalog" false="" catalogCatalog} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--out-path" false="" outOutPath} \
      ~{true="-x" false="" xX} \
      ~{true="--disable-gapped" false="" disableDisableGapped}
  >>>
}