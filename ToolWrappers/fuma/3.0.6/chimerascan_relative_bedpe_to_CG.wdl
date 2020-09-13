version 1.0

task ChimerascanrelativebedpetoCG {
  input {
    File? gene_annotation
    File? output_filename_stdout
    Boolean? v
  }
  command <<<
    chimerascan_relative_bedpe_to_CG \
      ~{if defined(gene_annotation) then ("--gene-annotation " +  '"' + gene_annotation + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    gene_annotation: "gene_features.txt file used by chimersacan"
    output_filename_stdout: "output filename; '-' for stdout\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
  }
}