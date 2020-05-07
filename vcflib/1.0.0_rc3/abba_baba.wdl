version 1.0

task AbbaBaba {
  input {
    String treeTree
    String yourYour
  }
  command <<<
    abba-baba \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}