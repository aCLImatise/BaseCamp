version 1.0

task FilterFastash {
  input {
    File? file_to_filter
    File? directory_optional_default
    File? name_optional_default
    String? key_terms_separated
    String? term_discard_sequences
    File? filter_filter_file
    File? list_terms_filter
    String? usage_message
  }
  command <<<
    filter_fasta_sh \
      ~{if defined(file_to_filter) then ("-i " +  '"' + file_to_filter + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(name_optional_default) then ("-n " +  '"' + name_optional_default + '"') else ""} \
      ~{if defined(key_terms_separated) then ("-l " +  '"' + key_terms_separated + '"') else ""} \
      ~{if defined(term_discard_sequences) then ("-N " +  '"' + term_discard_sequences + '"') else ""} \
      ~{if defined(filter_filter_file) then ("-G " +  '"' + filter_filter_file + '"') else ""} \
      ~{if defined(list_terms_filter) then ("-f " +  '"' + list_terms_filter + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    file_to_filter: "file to filter"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    name_optional_default: "name (optional). By default is the same as -f file with .fasta extension"
    key_terms_separated: "of key terms separated by space"
    term_discard_sequences: "term to discard sequences with terms (Negative filter)"
    filter_filter_file: "filter: filter any file with a list of keys"
    list_terms_filter: "with a list of terms to filter"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}