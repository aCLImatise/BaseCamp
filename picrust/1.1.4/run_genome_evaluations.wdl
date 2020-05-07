version 1.0

task RunGenomeEvaluations.py {
  input {
    String inputInputDir
    String refRefTree
  }
  command <<<
    run_genome_evaluations.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(refRefTree) then ("--ref_tree " +  '"' + refRefTree + '"') else ""}
  >>>
}