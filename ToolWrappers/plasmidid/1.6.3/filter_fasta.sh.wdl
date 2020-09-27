version 1.0

task FilterFastash {
  input {
    File? file_filtero_optional
  }
  command <<<
    filter_fasta_sh \
      ~{if defined(file_filtero_optional) then ("-i " +  '"' + file_filtero_optional + '"') else ""}
  >>>
  parameter_meta {
    file_filtero_optional: "file to filter\\n-o output directory (optional). By default the file is replaced in the same location\\n-n file name (optional). By default is the same as -f file with .fasta extension\\n-l list of key terms separated by space\\n-N Use term to discard sequences with terms (Negative filter)\\n-G General filter: filter any file with a list of keys\\n-f file with a list of terms to filter\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
    File out_file_filtero_optional = "${in_file_filtero_optional}"
  }
}