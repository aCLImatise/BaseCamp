version 1.0

task SierrapyMutations {
  input {
    File? query
    File? file_path_store
    Boolean? ugly
    String mutations_dot_dot_dot
  }
  command <<<
    sierrapy mutations \
      ~{mutations_dot_dot_dot} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(file_path_store) then ("--output " +  '"' + file_path_store + '"') else ""} \
      ~{if (ugly) then "--ugly" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query: "A file contains GraphQL fragment definition on\\n`MutationsAnalysis`."
    file_path_store: "File path to store the JSON result."
    ugly: "Output compressed JSON result."
    mutations_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}