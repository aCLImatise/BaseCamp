version 1.0

task ArbNtree {
  input {
    String? execute
    Directory directory
    File file_mask
  }
  command <<<
    arb_ntree \
      ~{directory} \
      ~{file_mask} \
      ~{if defined(execute) then ("--execute " +  '"' + execute + '"') else ""}
  >>>
  parameter_meta {
    execute: "=> execute macro 'macroname' after startup"
    directory: "-> prompt for databases inside directory"
    file_mask: "-> also prompt for DB, but more specific (e.g. \"prot*.arb\")"
  }
}