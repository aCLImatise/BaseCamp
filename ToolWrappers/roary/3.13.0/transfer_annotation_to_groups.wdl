version 1.0

task TransferAnnotationToGroups {
  input {
    File? output_filename
    File? clusters_filename
    Boolean? verbose_output_stdout
  }
  command <<<
    transfer_annotation_to_groups \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(clusters_filename) then ("-g " +  '"' + clusters_filename + '"') else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""}
  >>>
  parameter_meta {
    output_filename: "output filename [reannotated_groups]"
    clusters_filename: "clusters filename [clustered_proteins]"
    verbose_output_stdout: "verbose output to STDOUT"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}