version 1.0

task MakerMapIds {
  input {
    Boolean prefixPrefix
    Boolean suffixSuffix
    Boolean initialInitial
    Boolean abAbRvGene
    Boolean abAbRvTran
    Boolean iterateIterate
    Boolean justifyJustify
    Boolean sortSortOrder
  }
  command <<<
    maker_map_ids \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--suffix" false="" suffixSuffix} \
      ~{true="--initial" false="" initialInitial} \
      ~{true="--abrv_gene" false="" abAbRvGene} \
      ~{true="--abrv_tran" false="" abAbRvTran} \
      ~{true="--iterate" false="" iterateIterate} \
      ~{true="--justify" false="" justifyJustify} \
      ~{true="--sort_order" false="" sortSortOrder}
  >>>
}