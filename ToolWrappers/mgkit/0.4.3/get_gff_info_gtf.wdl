version 1.0

task GetgffinfoGtf {
  input {
    Boolean? verbose
    String? gene_id
    String? gff_file
    String? gtf_file
  }
  command <<<
    get_gff_info gtf \
      ~{gff_file} \
      ~{gtf_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(gene_id) then ("--gene-id " +  '"' + gene_id + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    gene_id: "GFF attribute to use for the GTF *gene_id* attribute\\n[default: gene_id]"
    gff_file: ""
    gtf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}