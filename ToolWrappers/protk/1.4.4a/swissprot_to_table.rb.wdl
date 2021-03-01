version 1.0

task SwissprotToTablerb {
  input {
    File? explicitly_named_output
    Boolean? debug
    File? database
    String? keys
    Boolean? show_keys
    String? separator
    String? array_separator
    String? query_separator
    Int? id_column
    String queries_dot_txt
  }
  command <<<
    swissprot_to_table_rb \
      ~{queries_dot_txt} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(keys) then ("--keys " +  '"' + keys + '"') else ""} \
      ~{if (show_keys) then "--show-keys" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(array_separator) then ("--array-separator " +  '"' + array_separator + '"') else ""} \
      ~{if defined(query_separator) then ("--query-separator " +  '"' + query_separator + '"') else ""} \
      ~{if defined(id_column) then ("--id-column " +  '"' + id_column + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    debug: "Run in debug mode [false]"
    database: "Uniprot flatfile database containing full records for proteins"
    keys: "Filter output to only the specified keys (comma separated)"
    show_keys: "Print a list of possible values for the keys field and exit [false]"
    separator: "Separator character for output, default (tab) [    ]"
    array_separator: "Array Separator character, default , [,]"
    query_separator: "Separator character for queries.txt, default is tab [      ]"
    id_column: "Column in queries.txt in which Uniprot Accessions are found [1]"
    queries_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}