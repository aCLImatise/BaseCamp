version 1.0

task Fseqbootall {
  input {
    Boolean categoriesCategories
    Boolean mixMixFile
    Boolean ancAncFile
    Boolean weightsWeights
    Boolean factorFactorFile
    Boolean datatypeDatatype
    Boolean testTest
    Boolean printPrintData
  }
  command <<<
    fseqbootall \
      ~{true="-categories" false="" categoriesCategories} \
      ~{true="-mixfile" false="" mixMixFile} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-factorfile" false="" factorFactorFile} \
      ~{true="-datatype" false="" datatypeDatatype} \
      ~{true="-test" false="" testTest} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}