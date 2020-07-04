version 1.0

task PoolTestDatasets.py {
  input {
    String? trait_table_dir
    String? exp_trait_table_dir
    String? output_dir
  }
  command <<<
    pool_test_datasets.py \
      ~{if defined(trait_table_dir) then ("--trait_table_dir " +  '"' + trait_table_dir + '"') else ""} \
      ~{if defined(exp_trait_table_dir) then ("--exp_trait_table_dir " +  '"' + exp_trait_table_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    trait_table_dir: "the input trait table directory (files in biom format) [REQUIRED]"
    exp_trait_table_dir: "the input expected trait table directory (files in biom format) [REQUIRED]"
    output_dir: "the output directory [REQUIRED]"
  }
}