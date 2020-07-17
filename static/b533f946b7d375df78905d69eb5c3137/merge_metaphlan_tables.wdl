version 1.0

task MergeMetaphlanTables.py {
  input {
    String? name_tables_saved
    String input_dot_txt
  }
  command <<<
    merge_metaphlan_tables.py \
      ~{input_dot_txt} \
      ~{if defined(name_tables_saved) then ("-o " +  '"' + name_tables_saved + '"') else ""}
  >>>
  parameter_meta {
    name_tables_saved: "Name of output file in which joined tables are saved"
    input_dot_txt: "One or more tab-delimited text tables to join"
  }
}