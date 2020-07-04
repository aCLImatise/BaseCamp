version 1.0

task MakerMapIds {
  input {
    Boolean? prefix
    Boolean? suffix
    Boolean? initial
    Boolean? ab_rv_gene
    Boolean? ab_rv_tran
    Boolean? iterate
    Boolean? justify
    Boolean? sort_order
  }
  command <<<
    maker_map_ids \
      ~{true="--prefix" false="" prefix} \
      ~{true="--suffix" false="" suffix} \
      ~{true="--initial" false="" initial} \
      ~{true="--abrv_gene" false="" ab_rv_gene} \
      ~{true="--abrv_tran" false="" ab_rv_tran} \
      ~{true="--iterate" false="" iterate} \
      ~{true="--justify" false="" justify} \
      ~{true="--sort_order" false="" sort_order}
  >>>
  parameter_meta {
    prefix: "The prefix to use for all IDs (default = 'MAKER_')"
    suffix: "A suffix to use for all transcript IDs (default = '-R'). Specifying --suffix will also turn on --iterate."
    initial: "The initial value to start with for ID count. If --initial is supplied more than once than the first value will be used for genes and the second for transcripts (default = 1)"
    ab_rv_gene: "Optional abreviation added to IDs for genes (i.e. = 'G')"
    ab_rv_tran: "Optioanl abreviation added to IDs for transcripts (i.e. = 'T')"
    iterate: "Transcript iteration to add to IDs. Value can be '0', '1', or 'A', i.e. mRNA-0 or mRNA-1 or mRNA-A (default = 'A')"
    justify: "The unique integer portion of the ID will be right justified with '0's to this length (default = 8)"
    sort_order: "A tab delimited file containing two columns: contig_id and sort_order.  Genes and transcripts will be named in consecutive order along the contigs, and the contigs will be sorted in the order specified by the file.  If sort_order is not given and there are ##sequence-region directives at the top of the gff file then naming will be ordered by decreasing contig length."
  }
}