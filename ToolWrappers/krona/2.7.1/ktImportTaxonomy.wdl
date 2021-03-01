version 1.0

task KtImportTaxonomy {
  input {
    String taxonomy
    String magnitudes
    String name
  }
  command <<<
    ktImportTaxonomy \
      ~{taxonomy} \
      ~{magnitudes} \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    taxonomy: "Tab-delimited file with taxonomy IDs and (optionally) query\\nIDs, magnitudes and scores. By default, query IDs, taxonomy IDs\\nand scores will be taken from columns 1, 2 and 3, respectively\\n(see -q, -t, -s, and -m). Lines beginning with \\\"#\\\" will be\\nignored. By default, separate datasets will be created for each\\ninput (see [-c])."
    magnitudes: "Optional file listing query IDs with magnitudes, separated by\\ntabs. This can be used to account for read length or contig\\ndepth to obtain a more accurate representation of abundance. By\\ndefault, query sequences without specified magnitudes will be\\nassigned a magnitude of 1. Magnitude files for assemblies in ACE\\nformat can be created with ktGetContigMagnitudes."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified). By\\ndefault, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}