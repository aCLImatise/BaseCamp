version 1.0

task CentrifugeInspect {
  input {
    Boolean aA
    Boolean nN
    Boolean sS
    Boolean eE
    String conversionConversionTable
    Boolean taxonomyTaxonomyTree
    Boolean nameNameTable
    Boolean sizeSizeTable
    Boolean vV
    Boolean helpHelp
  }
  command <<<
    centrifuge-inspect \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{if defined(conversionConversionTable) then ("--conversion-table " +  '"' + conversionConversionTable + '"') else ""} \
      ~{true="--taxonomy-tree" false="" taxonomyTaxonomyTree} \
      ~{true="--name-table" false="" nameNameTable} \
      ~{true="--size-table" false="" sizeSizeTable} \
      ~{true="-v" false="" vV} \
      ~{true="--help" false="" helpHelp}
  >>>
}