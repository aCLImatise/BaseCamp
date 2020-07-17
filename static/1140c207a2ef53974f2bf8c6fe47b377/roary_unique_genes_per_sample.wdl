version 1.0

task RoaryUniqueGenesPerSample {
  input {
    String? output_filename
    String? clusters_filename
    Boolean? verbose_output_stdout
  }
  command <<<
    roary-unique_genes_per_sample \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(clusters_filename) then ("-c " +  '"' + clusters_filename + '"') else ""} \
      ~{true="-v" false="" verbose_output_stdout}
  >>>
  parameter_meta {
    output_filename: "output filename [unique_genes_per_sample.tsv]"
    clusters_filename: "clusters filename [clustered_proteins]"
    verbose_output_stdout: "verbose output to STDOUT"
  }
}