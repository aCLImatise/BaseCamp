version 1.0

task PnpsgenRank {
  input {
    File? taxonomy
    File? snp_data
    Boolean? rank
    Int? min_num
    Int? min_cov
    Int? tax_on_ids
    Boolean? unstack
    Boolean? lineage
    Boolean? only_ps
    Boolean? only_pn
    String? txt_file
  }
  command <<<
    pnps_gen rank \
      ~{txt_file} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(snp_data) then ("--snp-data " +  '"' + snp_data + '"') else ""} \
      ~{if (rank) then "--rank" else ""} \
      ~{if defined(min_num) then ("--min-num " +  '"' + min_num + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(tax_on_ids) then ("--taxon_ids " +  '"' + tax_on_ids + '"') else ""} \
      ~{if (unstack) then "--unstack" else ""} \
      ~{if (lineage) then "--lineage" else ""} \
      ~{if (only_ps) then "--only-ps" else ""} \
      ~{if (only_pn) then "--only-pn" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    taxonomy: "Taxonomy file  [required]"
    snp_data: "SNP data, output of `snp_parser`  [required]"
    rank: "[superkingdom|kingdom|phylum|class|order|family|genus|species|None]\\nTaxonomic rank  [default: order]"
    min_num: "RANGE     Minimum number of samples with a pN/pS to"
    min_cov: "RANGE     Minimum coverage for SNPs to be accepted\\n[default: 4]"
    tax_on_ids: "Taxon IDs to include  [default: 2]"
    unstack: "Samples are not in columns but as an array\\n[default: False]"
    lineage: "Use lineage string instead of taxon_id\\n[default: False]"
    only_ps: "Only calculate pS values  [default: False]"
    only_pn: "Only calculate pN values  [default: False]"
    txt_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}