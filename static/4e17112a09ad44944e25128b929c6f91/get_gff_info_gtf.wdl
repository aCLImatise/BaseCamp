version 1.0

task GetgffinfoGtf {
  input {
    String? verbose
    String? gff_file
    String? gtf_file
  }
  command <<<
    get_gff_info gtf \
      ~{gff_file} \
      ~{gtf_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "GFF attribute to use for the GTF *gene_id* attribute\\n[default: gene_id]"
    gff_file: ""
    gtf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}