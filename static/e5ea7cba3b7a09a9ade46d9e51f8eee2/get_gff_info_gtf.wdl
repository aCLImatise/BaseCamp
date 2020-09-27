version 1.0

task GetgffinfoGtf {
  input {
    Boolean? verbose
    String? gff_file
    String? gtf_file
  }
  command <<<
    get_gff_info gtf \
      ~{gff_file} \
      ~{gtf_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-g, --gene-id TEXT  GFF attribute to use for the GTF *gene_id* attribute\\n[default: gene_id]\\n--help              Show this message and exit.\\n"
    gff_file: ""
    gtf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}