version 1.0

task KtImportKrona {
  input {
    String krona_chart
    String magnitudes
    String name
  }
  command <<<
    ktImportKrona \
      ~{krona_chart} \
      ~{magnitudes} \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    krona_chart: "Krona HTML file created with KronaTools or the Krona Excel\\nTemplate By default, separate datasets will be created for each\\ninput (see [-c])."
    magnitudes: "Optional file listing query IDs with magnitudes, separated by\\ntabs. This can be used to account for read length or contig\\ndepth to obtain a more accurate representation of abundance. By\\ndefault, query sequences without specified magnitudes will be\\nassigned a magnitude of 1. Magnitude files for assemblies in\\nACE format can be created with ktGetContigMagnitudes."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified). By\\ndefault, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}