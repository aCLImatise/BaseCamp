version 1.0

task BayesTyperToolsMakeBloom {
  input {
    Boolean kK
    Boolean pP
    String falseFalsePositiveRate
  }
  command <<<
    bayesTyperTools makeBloom \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{if defined(falseFalsePositiveRate) then ("--false-positive-rate " +  '"' + falseFalsePositiveRate + '"') else ""}
  >>>
}