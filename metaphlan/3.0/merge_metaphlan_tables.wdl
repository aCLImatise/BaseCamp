version 1.0

task MergeMetaphlanTables.py {
  input {
    String oO
  }
  command <<<
    merge_metaphlan_tables.py \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}