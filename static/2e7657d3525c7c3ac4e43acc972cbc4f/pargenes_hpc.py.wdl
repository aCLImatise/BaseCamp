version 1.0

task Pargeneshpcpy {
  input {
    Directory? alignments_dir
    Directory? output_dir
    Int? cores
    Int? seed
    Boolean? continue
    String? scheduler
    String? core_assignment
    Boolean? valgrind
    Boolean? job_failure_fatal
    File? per_msa_ra_xml_parameters
    Int? random_starting_trees
    Int? parsimony_starting_trees
    File? ra_xml_global_parameters
    String? ra_xml_global_parameters_string
    Int? bs_trees
    Boolean? autom_re
    File? ra_xml_binary
    Int? percentage_jobs_double_cores
    Boolean? use_model_test
    File? model_test_global_parameters
    File? per_msa_model_test_parameters
    String? model_test_criteria
    Int? model_test_per_job_cores
    File? model_test_binary
    Boolean? use_astral
    File? astral_global_parameters
    Boolean? experiment_disable_jobs_sorting
    Int? retry
    String checkpoint
    String process
  }
  command <<<
    pargenes_hpc_py \
      ~{checkpoint} \
      ~{process} \
      ~{if defined(alignments_dir) then ("--alignments-dir " +  '"' + alignments_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(core_assignment) then ("--core-assignment " +  '"' + core_assignment + '"') else ""} \
      ~{if (valgrind) then "--valgrind" else ""} \
      ~{if (job_failure_fatal) then "--job-failure-fatal" else ""} \
      ~{if defined(per_msa_ra_xml_parameters) then ("--per-msa-raxml-parameters " +  '"' + per_msa_ra_xml_parameters + '"') else ""} \
      ~{if defined(random_starting_trees) then ("--random-starting-trees " +  '"' + random_starting_trees + '"') else ""} \
      ~{if defined(parsimony_starting_trees) then ("--parsimony-starting-trees " +  '"' + parsimony_starting_trees + '"') else ""} \
      ~{if defined(ra_xml_global_parameters) then ("--raxml-global-parameters " +  '"' + ra_xml_global_parameters + '"') else ""} \
      ~{if defined(ra_xml_global_parameters_string) then ("--raxml-global-parameters-string " +  '"' + ra_xml_global_parameters_string + '"') else ""} \
      ~{if defined(bs_trees) then ("--bs-trees " +  '"' + bs_trees + '"') else ""} \
      ~{if (autom_re) then "--autoMRE" else ""} \
      ~{if defined(ra_xml_binary) then ("--raxml-binary " +  '"' + ra_xml_binary + '"') else ""} \
      ~{if defined(percentage_jobs_double_cores) then ("--percentage-jobs-double-cores " +  '"' + percentage_jobs_double_cores + '"') else ""} \
      ~{if (use_model_test) then "--use-modeltest" else ""} \
      ~{if defined(model_test_global_parameters) then ("--modeltest-global-parameters " +  '"' + model_test_global_parameters + '"') else ""} \
      ~{if defined(per_msa_model_test_parameters) then ("--per-msa-modeltest-parameters " +  '"' + per_msa_model_test_parameters + '"') else ""} \
      ~{if defined(model_test_criteria) then ("--modeltest-criteria " +  '"' + model_test_criteria + '"') else ""} \
      ~{if defined(model_test_per_job_cores) then ("--modeltest-perjob-cores " +  '"' + model_test_per_job_cores + '"') else ""} \
      ~{if defined(model_test_binary) then ("--modeltest-binary " +  '"' + model_test_binary + '"') else ""} \
      ~{if (use_astral) then "--use-astral" else ""} \
      ~{if defined(astral_global_parameters) then ("--astral-global-parameters " +  '"' + astral_global_parameters + '"') else ""} \
      ~{if (experiment_disable_jobs_sorting) then "--experiment-disable-jobs-sorting" else ""} \
      ~{if defined(retry) then ("--retry " +  '"' + retry + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pargenes:1.2.0--py37hf7b2935_0"
  }
  parameter_meta {
    alignments_dir: "Directory containing the fasta files"
    output_dir: "Output directory"
    cores: "The number of computational cores available for\\ncomputation. Should at least 2."
    seed: "Random seed, for reproductibility of RAxML-NG runs.\\nSet to 0 by default"
    continue: "Allow pargenes to continue the analysis from the last"
    scheduler: "Expert-user only."
    core_assignment: "Policy to decide the per-job number of cores (low\\nfavors a low per-job number of cores)"
    valgrind: "Run the scheduler with valgrind"
    job_failure_fatal: "Stop ParGenes when a job fails"
    per_msa_ra_xml_parameters: "A file containing per-msa raxml parameters"
    random_starting_trees: "The number of starting trees"
    parsimony_starting_trees: "The number of starting parsimony trees"
    ra_xml_global_parameters: "A file containing the parameters to pass to raxml"
    ra_xml_global_parameters_string: "List of parameters to pass to raxml (see also --raxml-\\nglobal-parameters)"
    bs_trees: "The number of bootstrap trees to compute"
    autom_re: "Stop computing bootstrap trees after autoMRE bootstrap\\nconvergence test. You have to specify the maximum\\nnumber of bootstrap trees with -b or --bs-tree"
    ra_xml_binary: "Custom path to raxml-ng executable. Please refer to\\nthe wiki before setting this variable yourself."
    percentage_jobs_double_cores: "Percentage (between 0 and 1) of jobs that will receive\\ntwice more cores"
    use_model_test: "Autodetect the model with modeltest"
    model_test_global_parameters: "A file containing the parameters to pass to modeltest"
    per_msa_model_test_parameters: "A file containing per-msa modeltest parameters"
    model_test_criteria: "Alignments datatype"
    model_test_per_job_cores: "Number of cores to assign to each modeltest core (at\\nleast 4)"
    model_test_binary: "Custom path to modeltest-ng executable. Please refer\\nto the wiki before setting this variable yourself."
    use_astral: "Infer a species tree with astral"
    astral_global_parameters: "A file containing additional parameters to pass to\\nastral"
    experiment_disable_jobs_sorting: "For experimenting only! Removes the sorting step in\\nthe scheduler"
    retry: "Number of time the scheduler should try to restart\\nafter an error\\n"
    checkpoint: "--msa-filter MSA_FILTER"
    process: "-d {nt,aa}, --datatype {nt,aa}"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}