version 1.0

task Tsv2bam {
  input {
    Boolean inInDir
    Boolean popPopMap
    Boolean sampleSample
    Boolean pePeReadsDir
    Boolean tT
  }
  command <<<
    tsv2bam \
      ~{true="--in-dir" false="" inInDir} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="--sample" false="" sampleSample} \
      ~{true="--pe-reads-dir" false="" pePeReadsDir} \
      ~{true="-t" false="" tT}
  >>>
}