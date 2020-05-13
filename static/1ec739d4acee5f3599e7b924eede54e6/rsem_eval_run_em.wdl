version 1.0

task RsemEvalRunEm {
  input {
    Boolean pP
    Boolean bB
    Boolean qQ
    Boolean samplingSampling
    String seedSeed
  }
  command <<<
    rsem-eval-run-em \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-q" false="" qQ} \
      ~{true="--sampling" false="" samplingSampling} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}