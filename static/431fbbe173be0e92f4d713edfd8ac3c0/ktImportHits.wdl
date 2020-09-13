version 1.0

task KtImportHits {
  input {
    String hits
    String magnitudes
    String name
  }
  command <<<
    ktImportHits \
      ~{hits} \
      ~{magnitudes} \
      ~{name}
  >>>
  parameter_meta {
    hits: "Tabular file whose fields are [query, subject, score]. Subject\\nmust be an accession or contain one in the fourth field of pipe\\nnotation (e.g. \\\"gi|12345|xx|ABC123.1|\\\". The subject and score\\ncan be omitted to include a query that has no hits, which will\\nbe assigned a taxonomy ID of -1. By default, separate datasets\\nwill be created for each input (see [-c])."
    magnitudes: "Optional file listing query IDs with magnitudes, separated by\\ntabs. This can be used to account for read length or contig\\ndepth to obtain a more accurate representation of abundance. By\\ndefault, query sequences without specified magnitudes will be\\nassigned a magnitude of 1. Magnitude files for assemblies in ACE\\nformat can be created with ktGetContigMagnitudes."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified). By\\ndefault, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}