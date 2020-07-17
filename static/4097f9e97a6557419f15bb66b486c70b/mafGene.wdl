version 1.0

task MafGene {
  input {
    Boolean? use_file
    String? gene_name
    String? gene_list
    String? gene_beds
    String? chrom
    Boolean? exons
    Boolean? no_trans
    Boolean? uniq_aa
    Boolean? include_utr
    String? delay
    Boolean? no_dash
    String dbname
    String maf_table
    String gene_pred_table
    String species_dot_lst
    String put_output_here
  }
  command <<<
    mafGene \
      ~{dbname} \
      ~{maf_table} \
      ~{gene_pred_table} \
      ~{species_dot_lst} \
      ~{put_output_here} \
      ~{true="-useFile" false="" use_file} \
      ~{if defined(gene_name) then ("-geneName " +  '"' + gene_name + '"') else ""} \
      ~{if defined(gene_list) then ("-geneList " +  '"' + gene_list + '"') else ""} \
      ~{if defined(gene_beds) then ("-geneBeds " +  '"' + gene_beds + '"') else ""} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{true="-exons" false="" exons} \
      ~{true="-noTrans" false="" no_trans} \
      ~{true="-uniqAA" false="" uniq_aa} \
      ~{true="-includeUtr" false="" include_utr} \
      ~{if defined(delay) then ("-delay " +  '"' + delay + '"') else ""} \
      ~{true="-noDash" false="" no_dash}
  >>>
  parameter_meta {
    use_file: "genePredTable argument is a genePred file name"
    gene_name: "name of gene as it appears in genePred"
    gene_list: "name of file with list of genes"
    gene_beds: "name of bed file with genes and positions"
    chrom: "name of chromosome from which to grab genes"
    exons: "output exons"
    no_trans: "don't translate output into amino acids"
    uniq_aa: "put out unique pseudo-AA for every different codon"
    include_utr: "include the UTRs, use only with -noTrans"
    delay: "delay N seconds between genes (default 0)"
    no_dash: "don't output lines with all dashes"
    dbname: "name of SQL database"
    maf_table: "name of maf file table"
    gene_pred_table: "name of the genePred table"
    species_dot_lst: "list of species names"
    put_output_here: "put output here"
  }
}