version 1.0

task ParallelPredictTraitspy {
  input {
    Boolean? verbose
    File? calculate_accuracy_metrics
    String? reconstructed_trait_table
    File? output_pre_calc_file_in_biom
    String? reconstruction_confidence
    String? parallel_method
    Int? num_jobs
    Int? delay
    File? already_calculated
    String? observed_trait_table
    String? tree
    File? output_trait_table
  }
  command <<<
    parallel_predict_traits_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (calculate_accuracy_metrics) then "--calculate_accuracy_metrics" else ""} \
      ~{if defined(reconstructed_trait_table) then ("--reconstructed_trait_table " +  '"' + reconstructed_trait_table + '"') else ""} \
      ~{if (output_pre_calc_file_in_biom) then "--output_precalc_file_in_biom" else ""} \
      ~{if defined(reconstruction_confidence) then ("--reconstruction_confidence " +  '"' + reconstruction_confidence + '"') else ""} \
      ~{if defined(parallel_method) then ("--parallel_method " +  '"' + parallel_method + '"') else ""} \
      ~{if defined(num_jobs) then ("--num_jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(delay) then ("--delay " +  '"' + delay + '"') else ""} \
      ~{if defined(already_calculated) then ("--already_calculated " +  '"' + already_calculated + '"') else ""} \
      ~{if defined(observed_trait_table) then ("--observed_trait_table " +  '"' + observed_trait_table + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(output_trait_table) then ("--output_trait_table " +  '"' + output_trait_table + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    calculate_accuracy_metrics: "if specified, calculate accuracy metrics (i.e. how\\naccurate does PICRUSt expect its predictions to be?)\\nand add to output file [default: False]"
    reconstructed_trait_table: "the input trait table describing reconstructed traits\\n(from ancestral_state_reconstruction.py) in tab-\\ndelimited format [default: none]"
    output_pre_calc_file_in_biom: "Instead of outputting the precalculated file in tab-\\ndelimited format (with otu ids as row ids and traits\\nas columns) output the data in biom format (with otu\\nas SampleIds and traits as ObservationIds) [default:\\nFalse]"
    reconstruction_confidence: "the input trait table describing confidence intervals\\nfor reconstructed traits (from\\nancestral_state_reconstruction.py) in tab-delimited\\nformat [default: none]"
    parallel_method: "Method for parallelizaation. Valid choices are: sge,\\ntorque, multithreaded [default: multithreaded]"
    num_jobs: "Number of jobs to be submitted. [default: 2]"
    delay: "Number of seconds to pause between launching each job\\n[default: 0]"
    already_calculated: "Precalculated file that is missing some otu\\npredictions. Output will contain predictions from this\\nfile and the new predictions as well. [default: none]"
    observed_trait_table: "the input trait table describing directly observed\\ntraits (e.g. sequenced genomes) in tab-delimited\\nformat [REQUIRED]"
    tree: "the full reference tree, in Newick format [REQUIRED]"
    output_trait_table: "the output filepath for trait predictions [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_calculate_accuracy_metrics = "${in_calculate_accuracy_metrics}"
    File out_output_pre_calc_file_in_biom = "${in_output_pre_calc_file_in_biom}"
    File out_already_calculated = "${in_already_calculated}"
    File out_output_trait_table = "${in_output_trait_table}"
  }
}