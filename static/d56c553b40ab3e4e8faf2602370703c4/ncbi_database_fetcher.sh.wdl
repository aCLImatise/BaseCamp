version 1.0

task NcbiDatabaseFetchersh {
  input {
    File? key_terms_separated
  }
  command <<<
    ncbi_database_fetcher_sh \
      ~{if defined(key_terms_separated) then ("-y " +  '"' + key_terms_separated + '"') else ""}
  >>>
  parameter_meta {
    key_terms_separated: "of key terms separated by space to be INCLUDED in sequences title\\n-n list of key terms separated by space to be EXCLUDED in sequences title\\n-O organism to filter\\n-d database type, default nucleotide\\n-o output directory (optional). By default the file is placed in cwd\\n-f file name (optional). By default is the first term used as query\\n-q quiet\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
    File out_key_terms_separated = "${in_key_terms_separated}"
  }
}