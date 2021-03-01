class: CommandLineTool
id: pargenes.py.cwl
inputs:
- id: in_alignments_dir
  doc: Directory containing the fasta files
  type: Directory?
  inputBinding:
    prefix: --alignments-dir
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_cores
  doc: "The number of computational cores available for\ncomputation. Should at least\
    \ 2."
  type: long?
  inputBinding:
    prefix: --cores
- id: in_seed
  doc: "Random seed, for reproductibility of RAxML-NG runs.\nSet to 0 by default"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_continue
  doc: Allow pargenes to continue the analysis from the last
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_scheduler
  doc: Expert-user only.
  type: string?
  inputBinding:
    prefix: --scheduler
- id: in_core_assignment
  doc: "Policy to decide the per-job number of cores (low\nfavors a low per-job number\
    \ of cores)"
  type: string?
  inputBinding:
    prefix: --core-assignment
- id: in_valgrind
  doc: Run the scheduler with valgrind
  type: boolean?
  inputBinding:
    prefix: --valgrind
- id: in_job_failure_fatal
  doc: Stop ParGenes when a job fails
  type: boolean?
  inputBinding:
    prefix: --job-failure-fatal
- id: in_per_msa_ra_xml_parameters
  doc: A file containing per-msa raxml parameters
  type: File?
  inputBinding:
    prefix: --per-msa-raxml-parameters
- id: in_random_starting_trees
  doc: The number of starting trees
  type: long?
  inputBinding:
    prefix: --random-starting-trees
- id: in_parsimony_starting_trees
  doc: The number of starting parsimony trees
  type: long?
  inputBinding:
    prefix: --parsimony-starting-trees
- id: in_ra_xml_global_parameters
  doc: A file containing the parameters to pass to raxml
  type: File?
  inputBinding:
    prefix: --raxml-global-parameters
- id: in_ra_xml_global_parameters_string
  doc: "List of parameters to pass to raxml (see also --raxml-\nglobal-parameters)"
  type: string?
  inputBinding:
    prefix: --raxml-global-parameters-string
- id: in_bs_trees
  doc: The number of bootstrap trees to compute
  type: long?
  inputBinding:
    prefix: --bs-trees
- id: in_autom_re
  doc: "Stop computing bootstrap trees after autoMRE bootstrap\nconvergence test.\
    \ You have to specify the maximum\nnumber of bootstrap trees with -b or --bs-tree"
  type: boolean?
  inputBinding:
    prefix: --autoMRE
- id: in_ra_xml_binary
  doc: "Custom path to raxml-ng executable. Please refer to\nthe wiki before setting\
    \ this variable yourself."
  type: File?
  inputBinding:
    prefix: --raxml-binary
- id: in_percentage_jobs_double_cores
  doc: "Percentage (between 0 and 1) of jobs that will receive\ntwice more cores"
  type: long?
  inputBinding:
    prefix: --percentage-jobs-double-cores
- id: in_use_model_test
  doc: Autodetect the model with modeltest
  type: boolean?
  inputBinding:
    prefix: --use-modeltest
- id: in_model_test_global_parameters
  doc: A file containing the parameters to pass to modeltest
  type: File?
  inputBinding:
    prefix: --modeltest-global-parameters
- id: in_per_msa_model_test_parameters
  doc: A file containing per-msa modeltest parameters
  type: File?
  inputBinding:
    prefix: --per-msa-modeltest-parameters
- id: in_model_test_criteria
  doc: Alignments datatype
  type: string?
  inputBinding:
    prefix: --modeltest-criteria
- id: in_model_test_per_job_cores
  doc: "Number of cores to assign to each modeltest core (at\nleast 4)"
  type: long?
  inputBinding:
    prefix: --modeltest-perjob-cores
- id: in_model_test_binary
  doc: "Custom path to modeltest-ng executable. Please refer\nto the wiki before setting\
    \ this variable yourself."
  type: File?
  inputBinding:
    prefix: --modeltest-binary
- id: in_use_astral
  doc: Infer a species tree with astral
  type: boolean?
  inputBinding:
    prefix: --use-astral
- id: in_astral_global_parameters
  doc: "A file containing additional parameters to pass to\nastral"
  type: File?
  inputBinding:
    prefix: --astral-global-parameters
- id: in_experiment_disable_jobs_sorting
  doc: "For experimenting only! Removes the sorting step in\nthe scheduler"
  type: boolean?
  inputBinding:
    prefix: --experiment-disable-jobs-sorting
- id: in_retry
  doc: "Number of time the scheduler should try to restart\nafter an error\n"
  type: long?
  inputBinding:
    prefix: --retry
- id: in_checkpoint
  doc: --msa-filter MSA_FILTER
  type: string
  inputBinding:
    position: 0
- id: in_process
  doc: -d {nt,aa}, --datatype {nt,aa}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pargenes:1.2.0--py37hf7b2935_0
cwlVersion: v1.1
baseCommand:
- pargenes.py
