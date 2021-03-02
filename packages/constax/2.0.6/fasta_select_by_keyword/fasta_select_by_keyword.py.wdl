version 1.0

task FastaSelectByKeywordpy {
  input {
    File? database_file_input
    String? filtered_fasta_output
    String? keyword
  }
  command <<<
    fasta_select_by_keyword_py \
      ~{if defined(database_file_input) then ("--input " +  '"' + database_file_input + '"') else ""} \
      ~{if defined(filtered_fasta_output) then ("--output " +  '"' + filtered_fasta_output + '"') else ""} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/constax:2.0.6--0"
  }
  parameter_meta {
    database_file_input: "database file input"
    filtered_fasta_output: "filtered fasta output"
    keyword: "filter records to include keyword\\n"
  }
  output {
    File out_stdout = stdout()
  }
}