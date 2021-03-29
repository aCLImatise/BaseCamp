version 1.0

task AugurTitersTree {
  input {
    Array[String] titers
    String? tree
    Boolean? allow_empty_model
    File? json_file_save
  }
  command <<<
    augur titers tree \
      ~{if defined(titers) then ("--titers " +  '"' + titers + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if (allow_empty_model) then "--allow-empty-model" else ""} \
      ~{if defined(json_file_save) then ("--output " +  '"' + json_file_save + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.3.0--py_0"
  }
  parameter_meta {
    titers: "file with titer measurements"
    tree: "tree to perform fit titer model to"
    allow_empty_model: "allow model to be empty"
    json_file_save: "JSON file to save titer model\\n"
  }
  output {
    File out_stdout = stdout()
  }
}