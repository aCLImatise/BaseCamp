version 1.0

task ExtractgffinfoGtf {
  input {
    String? verbose
    String? gff_file
    String? gtf_file
  }
  command <<<
    extract_gff_info gtf \
      ~{gff_file} \
      ~{gtf_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
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