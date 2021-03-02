version 1.0

task NcbiDatabaseFetchersh {
  input {
    String? key_terms_included
    String? key_terms_excluded
    String? to_filter
    String? type_default_nucleotide
    File? directory_optional_default
    File? name_optional_default
    String? usage_message
  }
  command <<<
    ncbi_database_fetcher_sh \
      ~{if defined(key_terms_included) then ("-y " +  '"' + key_terms_included + '"') else ""} \
      ~{if defined(key_terms_excluded) then ("-n " +  '"' + key_terms_excluded + '"') else ""} \
      ~{if defined(to_filter) then ("-O " +  '"' + to_filter + '"') else ""} \
      ~{if defined(type_default_nucleotide) then ("-d " +  '"' + type_default_nucleotide + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(name_optional_default) then ("-f " +  '"' + name_optional_default + '"') else ""} \
      ~{if defined(usage_message) then ("-q " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    key_terms_included: "of key terms separated by space to be INCLUDED in sequences title"
    key_terms_excluded: "of key terms separated by space to be EXCLUDED in sequences title"
    to_filter: "to filter"
    type_default_nucleotide: "type, default nucleotide"
    directory_optional_default: "directory (optional). By default the file is placed in cwd"
    name_optional_default: "name (optional). By default is the first term used as query"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}