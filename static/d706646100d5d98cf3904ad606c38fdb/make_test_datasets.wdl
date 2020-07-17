version 1.0

task MakeTestDatasets.py {
  input {
    String? input_trait_table
    String? input_tree
  }
  command <<<
    make_test_datasets.py \
      ~{if defined(input_trait_table) then ("--input_trait_table " +  '"' + input_trait_table + '"') else ""} \
      ~{if defined(input_tree) then ("--input_tree " +  '"' + input_tree + '"') else ""}
  >>>
  parameter_meta {
    input_trait_table: "the input trait table. [REQUIRED]"
    input_tree: "the input tree in Newick format [REQUIRED]"
  }
}