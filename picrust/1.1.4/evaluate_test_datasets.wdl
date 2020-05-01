version 1.0

task EvaluateTestDatasets.py {
  input {
    String traitTraitTableDir
    String expExpTraitTableDir
    String outputOutputDir
  }
  command <<<
    evaluate_test_datasets.py \
      ~{if defined(traitTraitTableDir) then ("--trait_table_dir " +  '"' + traitTraitTableDir + '"') else ""} \
      ~{if defined(expExpTraitTableDir) then ("--exp_trait_table_dir " +  '"' + expExpTraitTableDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}