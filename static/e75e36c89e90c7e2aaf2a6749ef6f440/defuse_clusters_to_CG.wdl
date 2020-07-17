version 1.0

task DefuseClustersToCG {
  input {
    String? gene_annotation
    String? output_filename_stdout
    Boolean? v
    String defuse_cluster_file
  }
  command <<<
    defuse-clusters-to-CG \
      ~{defuse_cluster_file} \
      ~{if defined(gene_annotation) then ("--gene-annotation " +  '"' + gene_annotation + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    gene_annotation: "GTF-file used by defuse"
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
    defuse_cluster_file: "Defuse cluster file"
  }
}