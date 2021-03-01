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
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (suffix) then "--suffix" else ""} \
      ~{if (initial) then "--initial" else ""} \
      ~{if (ab_rv_gene) then "--abrv_gene" else ""} \
      ~{if (ab_rv_tran) then "--abrv_tran" else ""} \
      ~{if (iterate) then "--iterate" else ""} \
      ~{if (justify) then "--justify" else ""} \
      ~{if (sort_order) then "--sort_order" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "The prefix to use for all IDs (default = 'MAKER_')"
    suffix: "A suffix to use for all transcript IDs (default = '-R').\\nSpecifying --suffix will also turn on --iterate."
    initial: "The initial value to start with for ID count. If --initial\\nis supplied more than once than the first value will be used\\nfor genes and the second for transcripts (default = 1)"
    ab_rv_gene: "Optional abreviation added to IDs for genes (i.e. = 'G')"
    ab_rv_tran: "Optioanl abreviation added to IDs for transcripts (i.e. = 'T')"
    iterate: "Transcript iteration to add to IDs. Value can be '0', '1',\\nor 'A', i.e. mRNA-0 or mRNA-1 or mRNA-A (default = 'A')"
    justify: "The unique integer portion of the ID will be right justified\\nwith '0's to this length (default = 8)"
    sort_order: "A tab delimited file containing two columns: contig_id\\nand sort_order.  Genes and transcripts will be named\\nin consecutive order along the contigs, and the\\ncontigs will be sorted in the order specified by the\\nfile.  If sort_order is not given and there are\\n##sequence-region directives at the top of the gff\\nfile then naming will be ordered by decreasing contig\\nlength."
  }
  output {
    File out_stdout = stdout()
  }
}