version 1.0

task ProphyleOtuTable.py {
  input {
    String rR
    String tT
    String iI
    String lL
  }
  command <<<
    prophyle_otu_table.py \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}