version 1.0

task Llrensemble {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? deprecated_transform_data
    Boolean? no_scale
    Boolean? arg_penalty_c
    Boolean? arg_epsilontolerance_stopping
    Boolean? _arg_epsilon
    Boolean? arg_lrllosssvr_svm
    Boolean? arg_ensemble_size
    Boolean? arg_predictorsthe_minimum
    Boolean? arg_predictorsthe_maximum
    Boolean? arg_minimum_absolute
    Boolean? arg_maximum_absolute
    Boolean? arg_number_genes
    Boolean? arg_directory_path
    Boolean? arg_number_openmp
    Boolean? force_overwrite_output
    File? arg_llrscorestsvoutput_file
    File? save_resume
    Boolean? arg_verbosity_level
    Boolean? print_program_version
    String exists
    String info_dot
  }
  command <<<
    llr_ensemble \
      ~{exists} \
      ~{info_dot} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (deprecated_transform_data) then "-s" else ""} \
      ~{if (no_scale) then "--no-scale" else ""} \
      ~{if (arg_penalty_c) then "-C" else ""} \
      ~{if (arg_epsilontolerance_stopping) then "-l" else ""} \
      ~{if (_arg_epsilon) then "-E" else ""} \
      ~{if (arg_lrllosssvr_svm) then "-S" else ""} \
      ~{if (arg_ensemble_size) then "-e" else ""} \
      ~{if (arg_predictorsthe_minimum) then "-p" else ""} \
      ~{if (arg_predictorsthe_maximum) then "-P" else ""} \
      ~{if (arg_minimum_absolute) then "-x" else ""} \
      ~{if (arg_maximum_absolute) then "-X" else ""} \
      ~{if (arg_number_genes) then "-B" else ""} \
      ~{if (arg_directory_path) then "-T" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (arg_llrscorestsvoutput_file) then "-o" else ""} \
      ~{if defined(save_resume) then ("--save-resume " +  '"' + save_resume + '"') else ""} \
      ~{if (arg_verbosity_level) then "-v" else ""} \
      ~{if (print_program_version) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    arg_expression_table: "[ --infile ] arg                   The expression table (without headers)"
    _arg_file_containing_gene_names: "[ --genes ] arg                    File containing gene names"
    deprecated_transform_data: "[ --scale ]                        (deprecated) Transform data to z-scores"
    no_scale: "Do not transform data to z-scores"
    arg_penalty_c: "[ --penalty ] arg (=1)             Penalty C value"
    arg_epsilontolerance_stopping: "[ --tol ] arg (=0.001)             Epsilon/tolerance (stopping criterion)"
    _arg_epsilon: "[ --eps ] arg (=0.1)               Epsilon (for EPSILON_SVR)"
    arg_lrllosssvr_svm: "[ --solver ] arg (=L2R_L2LOSS_SVR) SVM solver to use [L2R_L2LOSS_SVR,\\nL2R_L2LOSS_SVR_DUAL,\\nL2R_L1LOSS_SVR_DUAL]"
    arg_ensemble_size: "[ --ensemble ] arg (=1000)         The ensemble size"
    arg_predictorsthe_minimum: "[ --min-predictor-size ] arg (=20% of predictors)\\nThe minimum absolute number of\\npredictors (genes) to be sampled."
    arg_predictorsthe_maximum: "[ --max-predictor-size ] arg (=80% of predictors)\\nThe maximum absolute number of\\npredictors (genes) to be sampled"
    arg_minimum_absolute: "[ --min-experiment-size ] arg (=20% of experiments)\\nThe minimum absolute number of\\nexperiments (samples) to be sampled"
    arg_maximum_absolute: "[ --max-experiment-size ] arg (=80% of experiments)\\nThe maximum absolute number of\\nexperiments (samples) to be sampled"
    arg_number_genes: "[ --batch-size ] arg (=0)          Number of genes in MPI batch"
    arg_directory_path: "[ --tempdir ] arg                  Temporary directory path"
    arg_number_openmp: "[ --threads ] arg (=2)             Number of OpenMP threads per MPI task"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    arg_llrscorestsvoutput_file: "[ --outfile ] arg (=llr_scores.tsv)\\nOutput file path"
    save_resume: "Path to a file that stores job resume"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    print_program_version: "[ --version ]                      Print the program version"
    exists: "-t [ --targets ] arg                  File containing gene names of genes of "
    info_dot: "--resume-from arg                     Try to resume job from this file."
  }
  output {
    File out_stdout = stdout()
    File out_arg_llrscorestsvoutput_file = "${in_arg_llrscorestsvoutput_file}"
  }
}