version 1.0

task ProphyleNcbiTree.py {
  input {
    String lL
    String rR
    String uU
  }
  command <<<
    prophyle_ncbi_tree.py \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""}
  >>>
}