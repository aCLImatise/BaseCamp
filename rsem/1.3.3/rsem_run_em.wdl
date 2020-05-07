version 1.0

task RsemRunEm {
  input {
    Boolean pP
    Boolean bB
    Boolean qQ
    Boolean gibbsGibbsOut
    Boolean samplingSampling
    String seedSeed
    Boolean appendAppendNames
  }
  command <<<
    rsem-run-em \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-q" false="" qQ} \
      ~{true="--gibbs-out" false="" gibbsGibbsOut} \
      ~{true="--sampling" false="" samplingSampling} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--append-names" false="" appendAppendNames}
  >>>
}