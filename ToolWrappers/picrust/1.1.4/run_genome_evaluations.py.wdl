version 1.0

task RunGenomeEvaluationspy {
  input {
    Boolean? verbose
    Directory? output_dir
    String? parallel_method
    String? prediction_method
    Boolean? with_confidence
    Boolean? with_accuracy
    String? asr_method
    String? weighting_method
    Int? num_jobs
    String? tmp_dir
    Boolean? force
    Boolean? check_for_null_files
    Directory? input_dir
    String? ref_tree
  }
  command <<<
    run_genome_evaluations_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(parallel_method) then ("--parallel_method " +  '"' + parallel_method + '"') else ""} \
      ~{if defined(prediction_method) then ("--prediction_method " +  '"' + prediction_method + '"') else ""} \
      ~{if (with_confidence) then "--with_confidence" else ""} \
      ~{if (with_accuracy) then "--with_accuracy" else ""} \
      ~{if defined(asr_method) then ("--asr_method " +  '"' + asr_method + '"') else ""} \
      ~{if defined(weighting_method) then ("--weighting_method " +  '"' + weighting_method + '"') else ""} \
      ~{if defined(num_jobs) then ("--num_jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (check_for_null_files) then "--check_for_null_files" else ""} \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(ref_tree) then ("--ref_tree " +  '"' + ref_tree + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_dir: "the output directory [default: <input_dir>]"
    parallel_method: "Method for parallelization. Valid choices are: sge,\\ntorque, multithreaded [default: multithreaded]"
    prediction_method: "Method for trait prediction.  See predict_traits.py\\nfor full documentation. Valid choices are:\\nasr_and_weighting, nearest_neighbor, random_neighbor\\n[default: asr_and_weighting]"
    with_confidence: "If set, calculate confidence intervals with ace_ml or\\nace_reml, and use confidence intervals in trait\\nprediction"
    with_accuracy: "If set, calculate accuracy using the NSTI (nearest\\nsequenced taxon index) during trait prediction"
    asr_method: "Method for ancestral_state_reconstruction.  See\\nancestral_state_reconstruction.py for full\\ndocumentation. Valid choices are: ace_ml, ace_reml,\\nace_pic, wagner [default: wagner]"
    weighting_method: "Method for weighting during trait prediction.  See\\npredict_traits.py for full documentation. Valid\\nchoices are: linear, exponential, equal [default:\\nexponential]"
    num_jobs: "Number of jobs to be submitted. [default: 100]"
    tmp_dir: "location to store intermediate files [default:\\n<output_dir>]"
    force: "run all jobs even if output files exist [default:\\nFalse]"
    check_for_null_files: "check if pre-existing output files have null files. If\\nso remove them and re-run. [default: False]"
    input_dir: "directory containing one or more test datasets\\n[REQUIRED]"
    ref_tree: "reference tree that was used with make_test_datasets\\n[REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}