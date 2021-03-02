version 1.0

task GgdCheckrecipeRecipePath {
  input {
    Boolean? debug
    Boolean? dont_uninstall
    Int? id
    String recipe_path
  }
  command <<<
    ggd check_recipe recipe_path \
      ~{recipe_path} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (dont_uninstall) then "--dont_uninstall" else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0"
  }
  parameter_meta {
    debug: "(Optional) Set the stdout log level to debug"
    dont_uninstall: "(Optional) By default the newly installed local ggd\\ndata package is uninstalled after the check has\\nfinished. To bypass this uninstall step (to keep the\\nlocal package installed) set this flag \\\"--\\ndont_uninstall\\\""
    id: "ID   If checking a meta-recipe the associated meta-recipe\\nid needs to be supplied. (Example: for a geo meta-\\nrecipe use something like --id GSE123) NOTE: GGD does\\nnot try to correct the ID. Please provide the correct\\ncase sensitive ID.\\n"
    recipe_path: "path to recipe directory (can also be path to the\\n.bz2)"
  }
  output {
    File out_stdout = stdout()
  }
}