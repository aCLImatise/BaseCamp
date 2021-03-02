version 1.0

task SlivarTsv {
  input {
    File? ped
    String? csq_field
    String? csq_column
    String? sample_field
    Int? gene_description
    String? impact_order
    String? info_field
    File? out
  }
  command <<<
    slivar tsv \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(csq_field) then ("--csq-field " +  '"' + csq_field + '"') else ""} \
      ~{if defined(csq_column) then ("--csq-column " +  '"' + csq_column + '"') else ""} \
      ~{if defined(sample_field) then ("--sample-field " +  '"' + sample_field + '"') else ""} \
      ~{if defined(gene_description) then ("--gene-description " +  '"' + gene_description + '"') else ""} \
      ~{if defined(impact_order) then ("--impact-order " +  '"' + impact_order + '"') else ""} \
      ~{if defined(info_field) then ("--info-field " +  '"' + info_field + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ped: "required ped file describing the trios in the VCF"
    csq_field: "INFO field containing the gene name and impact. Usually CSQ or BCSQ"
    csq_column: "CSQ sub-field(s) to extract (in addition to gene, impact, transcript). may be specified multiple times."
    sample_field: "INFO field(s) that contains list of samples that have passed previous filters."
    gene_description: "tab-separated lookup of gene (column 1) to description (column 2) to add to output. the gene is case-sensitive. can be specified multiple times"
    impact_order: "ordering of impacts to override the default (https://raw.githubusercontent.com/brentp/slivar/master/src/slivarpkg/default-order.txt)"
    info_field: "INFO field(s) that should be added to output (e.g. gnomad_popmax_af)"
    out: "path to output tab-separated file (default: /dev/stdout)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}