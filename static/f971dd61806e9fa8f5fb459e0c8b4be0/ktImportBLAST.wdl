version 1.0

task KtImportBLAST {
  input {
    String blast_output
    String magnitudes
    String name
  }
  command <<<
    ktImportBLAST \
      ~{blast_output} \
      ~{magnitudes} \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    blast_output: "File containing BLAST results in tabular format (\\\"Hit table\\n(text)\\\" when downloading from NCBI). If running BLAST locally,\\nsubject IDs in the local database must contain accession\\nnumbers, either bare or in the fourth field of the\\npipe-separated (\\\"gi|12345|xx|ABC123.1|\\\") format. By default,\\nseparate datasets will be created for each input (see [-c])."
    magnitudes: "Optional file listing query IDs with magnitudes, separated by\\ntabs. This can be used to account for read length or contig\\ndepth to obtain a more accurate representation of abundance.\\nBy default, query sequences without specified magnitudes will\\nbe assigned a magnitude of 1. Magnitude files for assemblies\\nin ACE format can be created with ktGetContigMagnitudes."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified).\\nBy default, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}