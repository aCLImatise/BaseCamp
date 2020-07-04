version 1.0

task RunGenomeEvaluations.py {
  input {
    String? input_dir
    String? ref_tree
  }
  command <<<
    run_genome_evaluations.py \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(ref_tree) then ("--ref_tree " +  '"' + ref_tree + '"') else ""}
  >>>
  parameter_meta {
    input_dir: "directory containing one or more test datasets [REQUIRED]"
    ref_tree: "reference tree that was used with make_test_datasets [REQUIRED]"
  }
}