version 1.0

task FilterUniqueBasepairs.pl {
  input {
    Boolean tsvTsv
    Boolean treeTree
    Boolean validValid
    Boolean outputOutput
    Boolean vcfVcf
    Boolean directoryDirectory
    Boolean strainsStrains
    Boolean cladeClade
    Boolean quietQuiet
  }
  command <<<
    filter_unique_basepairs.pl \
      ~{true="--tsv" false="" tsvTsv} \
      ~{true="--tree" false="" treeTree} \
      ~{true="--valid" false="" validValid} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--vcf" false="" vcfVcf} \
      ~{true="--directory" false="" directoryDirectory} \
      ~{true="--strains" false="" strainsStrains} \
      ~{true="--clade" false="" cladeClade} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}