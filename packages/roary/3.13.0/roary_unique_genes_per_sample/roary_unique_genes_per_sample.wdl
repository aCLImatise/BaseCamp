version 1.0

task RoaryuniqueGenesPerSample {
  input {
    File? output_filename
    File? clusters_filename
    Boolean? verbose_output_stdout
  }
  command <<<
    roary_unique_genes_per_sample \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(clusters_filename) then ("-c " +  '"' + clusters_filename + '"') else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""}
  >>>
  parameter_meta {
    output_filename: "output filename [unique_genes_per_sample.tsv]"
    clusters_filename: "clusters filename [clustered_proteins]"
    verbose_output_stdout: "verbose output to STDOUT"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}