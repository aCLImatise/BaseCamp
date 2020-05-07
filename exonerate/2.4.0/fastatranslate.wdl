version 1.0

task Fastatranslate {
  input {
    Boolean geneticGeneticCode
  }
  command <<<
    fastatranslate \
      ~{true="--geneticcode" false="" geneticGeneticCode}
  >>>
}