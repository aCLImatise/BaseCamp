version 1.0

task GetGffInfoGtf {
  input {
    String? gene_id
    String? gff_file
    String? gtf_file
  }
  command <<<
    get-gff-info gtf \
      ~{gff_file} \
      ~{gtf_file} \
      ~{if defined(gene_id) then ("--gene-id " +  '"' + gene_id + '"') else ""}
  >>>
  parameter_meta {
    gene_id: "GFF attribute to use for the GTF *gene_id* attribute [default: gene_id]"
    gff_file: ""
    gtf_file: ""
  }
}