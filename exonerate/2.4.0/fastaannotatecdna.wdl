version 1.0

task Fastaannotatecdna {
  input {
    Boolean geneticGeneticCode
  }
  command <<<
    fastaannotatecdna \
      ~{true="--geneticcode" false="" geneticGeneticCode}
  >>>
}