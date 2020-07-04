version 1.0

task FormatTreeAndTraitTable.py {
  input {
    String? input_tree
    String? input_trait_table
  }
  command <<<
    format_tree_and_trait_table.py \
      ~{if defined(input_tree) then ("--input_tree " +  '"' + input_tree + '"') else ""} \
      ~{if defined(input_trait_table) then ("--input_trait_table " +  '"' + input_trait_table + '"') else ""}
  >>>
  parameter_meta {
    input_tree: "the input tree (Newick format) [REQUIRED]"
    input_trait_table: "the input trait table (QIIME OTU table format) [REQUIRED]"
  }
}