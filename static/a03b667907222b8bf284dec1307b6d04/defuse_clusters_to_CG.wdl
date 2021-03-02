version 1.0

task DefuseclusterstoCG {
  input {
    File? gene_annotation
    File? output_filename_stdout
    Boolean? v
    String defuse_cluster_file
  }
  command <<<
    defuse_clusters_to_CG \
      ~{defuse_cluster_file} \
      ~{if defined(gene_annotation) then ("--gene-annotation " +  '"' + gene_annotation + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_annotation: "GTF-file used by defuse"
    output_filename_stdout: "output filename; '-' for stdout\\n"
    v: ""
    defuse_cluster_file: "Defuse cluster file"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
  }
}