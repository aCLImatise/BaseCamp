version 1.0

task Mhcflurrycalibratepercentileranks {
  input {
    String? predictor_kind
    Directory? models_dir
    Array[String] alleles_calibrate_ranks
    File? match_amino_acid_distribution_data
    File? alleles_file
    Int? num_peptides_per_length
    Int? num_genotypes
    Int? alleles_per_genotype
    Boolean? motif_summary
    Int? length_range
    Int? prediction_batch_size
    Int? alleles_per_work_chunk
    Int? verbosity
    Int? num_jobs
    String? backend
    Int? gpus
    Int? max_workers_per_gpu
    Int? max_tasks_per_worker
    Directory? worker_log_dir
    String? cluster_submit_command
    String? cluster_results_workdir
    File? additional_complete_file
    File? cluster_script_prefix_path
    String _summarytoppeptidefraction_x
  }
  command <<<
    mhcflurry_calibrate_percentile_ranks \
      ~{_summarytoppeptidefraction_x} \
      ~{if defined(predictor_kind) then ("--predictor-kind " +  '"' + predictor_kind + '"') else ""} \
      ~{if defined(models_dir) then ("--models-dir " +  '"' + models_dir + '"') else ""} \
      ~{if defined(alleles_calibrate_ranks) then ("--allele " +  '"' + alleles_calibrate_ranks + '"') else ""} \
      ~{if defined(match_amino_acid_distribution_data) then ("--match-amino-acid-distribution-data " +  '"' + match_amino_acid_distribution_data + '"') else ""} \
      ~{if defined(alleles_file) then ("--alleles-file " +  '"' + alleles_file + '"') else ""} \
      ~{if defined(num_peptides_per_length) then ("--num-peptides-per-length " +  '"' + num_peptides_per_length + '"') else ""} \
      ~{if defined(num_genotypes) then ("--num-genotypes " +  '"' + num_genotypes + '"') else ""} \
      ~{if defined(alleles_per_genotype) then ("--alleles-per-genotype " +  '"' + alleles_per_genotype + '"') else ""} \
      ~{if (motif_summary) then "--motif-summary" else ""} \
      ~{if defined(length_range) then ("--length-range " +  '"' + length_range + '"') else ""} \
      ~{if defined(prediction_batch_size) then ("--prediction-batch-size " +  '"' + prediction_batch_size + '"') else ""} \
      ~{if defined(alleles_per_work_chunk) then ("--alleles-per-work-chunk " +  '"' + alleles_per_work_chunk + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(max_workers_per_gpu) then ("--max-workers-per-gpu " +  '"' + max_workers_per_gpu + '"') else ""} \
      ~{if defined(max_tasks_per_worker) then ("--max-tasks-per-worker " +  '"' + max_tasks_per_worker + '"') else ""} \
      ~{if defined(worker_log_dir) then ("--worker-log-dir " +  '"' + worker_log_dir + '"') else ""} \
      ~{if defined(cluster_submit_command) then ("--cluster-submit-command " +  '"' + cluster_submit_command + '"') else ""} \
      ~{if defined(cluster_results_workdir) then ("--cluster-results-workdir " +  '"' + cluster_results_workdir + '"') else ""} \
      ~{if defined(additional_complete_file) then ("--additional-complete-file " +  '"' + additional_complete_file + '"') else ""} \
      ~{if defined(cluster_script_prefix_path) then ("--cluster-script-prefix-path " +  '"' + cluster_script_prefix_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    predictor_kind: "Type of predictor to calibrate"
    models_dir: "Directory to read and write models"
    alleles_calibrate_ranks: "Alleles to calibrate percentile ranks for. If not\\nspecified all alleles are used"
    match_amino_acid_distribution_data: "Sample random peptides from the amino acid\\ndistribution of the peptides listed in the supplied\\nCSV file, which must have a 'peptide' column. If not\\nspecified a uniform distribution is used."
    alleles_file: "Use alleles in supplied CSV file, which must have an\\n'allele' column."
    num_peptides_per_length: "Number of peptides per length to use to calibrate\\npercent ranks. Default: 100000."
    num_genotypes: "Used when calibrrating a presentation predictor.\\nNumber of genotypesto sample"
    alleles_per_genotype: "Used when calibrating a presentation predictor. Number\\nof alleles per genotype. Use 1 to calibrate for single\\nalleles. Default: 6"
    motif_summary: "Calculate motifs and length preferences for each"
    length_range: "LENGTH_RANGE\\nMin and max peptide length to calibrate, inclusive.\\nDefault: (8, 15)"
    prediction_batch_size: "Keras batch size for predictions"
    alleles_per_work_chunk: "Number of alleles per work chunk. Default: 1."
    verbosity: "Keras verbosity. Default: 0"
    num_jobs: "Number of local processes to parallelize training\\nover. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system\\ndefault."
    gpus: "Number of GPUs to attempt to parallelize across.\\nRequires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU.\\nAdditional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for\\ntensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given\\ndirectory."
    cluster_submit_command: "Default: sh"
    cluster_results_workdir: "Default: ./cluster-workdir"
    additional_complete_file: "Additional file to monitor for job completion.\\nDefault: STDERR"
    cluster_script_prefix_path: "How many times to rerun failing jobs. Default: 3\\n"
    _summarytoppeptidefraction_x: "--summary-top-peptide-fraction X [X ...]"
  }
  output {
    File out_stdout = stdout()
  }
}