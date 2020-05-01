version 1.0

task MakeTestDatasets.py {
  input {
    String inputInputTraitTable
    String inputInputTree
  }
  command <<<
    make_test_datasets.py \
      ~{if defined(inputInputTraitTable) then ("--input_trait_table " +  '"' + inputInputTraitTable + '"') else ""} \
      ~{if defined(inputInputTree) then ("--input_tree " +  '"' + inputInputTree + '"') else ""}
  >>>
}