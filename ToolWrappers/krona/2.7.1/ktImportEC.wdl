version 1.0

task KtImportEC {
  input {
    String ec_numbers
    String magnitudes
    String name
  }
  command <<<
    ktImportEC \
      ~{ec_numbers} \
      ~{magnitudes} \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ec_numbers: "Tab-delimited files with EC numbers and (optionally) query IDs,\\nmagnitudes and scores. By default, query IDs, EC numbers and\\nscores will be taken from columns 1, 2 and 3, respectively (see\\n-q, -e, -s, and -m). By default, separate datasets will be\\ncreated for each input (see [-c])."
    magnitudes: "Optional file listing query IDs with magnitudes, separated by\\ntabs. This can be used to account for read length or contig\\ndepth to obtain a more accurate representation of abundance. By\\ndefault, query sequences without specified magnitudes will be\\nassigned a magnitude of 1. Magnitude files for assemblies in ACE\\nformat can be created with ktGetContigMagnitudes."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified). By\\ndefault, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}