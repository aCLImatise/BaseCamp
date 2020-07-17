version 1.0

task TransferAnnotationToGroups {
  input {
    String? output_filename
    String? clusters_filename
    Boolean? verbose_output_stdout
  }
  command <<<
    transfer_annotation_to_groups \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(clusters_filename) then ("-g " +  '"' + clusters_filename + '"') else ""} \
      ~{true="-v" false="" verbose_output_stdout}
  >>>
  parameter_meta {
    output_filename: "output filename [reannotated_groups]"
    clusters_filename: "clusters filename [clustered_proteins]"
    verbose_output_stdout: "verbose output to STDOUT"
  }
}