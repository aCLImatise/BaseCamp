version 1.0

task FilterHweByPop.pl {
  input {
    Boolean vcfVcfFile
    Boolean popPopMap
    Boolean cutCutOff
    Boolean outOut
  }
  command <<<
    filter_hwe_by_pop.pl \
      ~{true="--vcffile" false="" vcfVcfFile} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="--cutoff" false="" cutCutOff} \
      ~{true="--out" false="" outOut}
  >>>
}