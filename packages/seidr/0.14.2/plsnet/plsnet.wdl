version 1.0

task Plsnet {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? deprecated_transform_data
    Boolean? transform_data_zscores
    Boolean? arg_number_be
    Boolean? arg_ensemble_size
    Boolean? arg_sqrtmthe_number
    Boolean? arg_number_genes
    Boolean? arg_directory_path
    Boolean? arg_number_openmp
    Boolean? force_overwrite_output
    File? arg_plsnetscorestsvoutput_file
    File? save_resume
    Boolean? arg_verbosity_level
    Boolean? print_program_version
    String considered
    String exists
    String info_dot
  }
  command <<<
    plsnet \
      ~{considered} \
      ~{exists} \
      ~{info_dot} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (deprecated_transform_data) then "-s" else ""} \
      ~{if (transform_data_zscores) then "-S" else ""} \
      ~{if (arg_number_be) then "-c" else ""} \
      ~{if (arg_ensemble_size) then "-e" else ""} \
      ~{if (arg_sqrtmthe_number) then "-p" else ""} \
      ~{if (arg_number_genes) then "-B" else ""} \
      ~{if (arg_directory_path) then "-T" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (arg_plsnetscorestsvoutput_file) then "-o" else ""} \
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
    transform_data_zscores: "[ --no-scale ]                     Do not transform data to z-scores"
    arg_number_be: "[ --components ] arg (=5)          The number of PLS components to be"
    arg_ensemble_size: "[ --ensemble ] arg (=1000)         The ensemble size"
    arg_sqrtmthe_number: "[ --predictor-size ] arg (=sqrt(m))\\nThe number of predictors (genes) to be\\nsampled."
    arg_number_genes: "[ --batch-size ] arg (=0)          Number of genes in MPI batch"
    arg_directory_path: "[ --tempdir ] arg                  Temporary directory path"
    arg_number_openmp: "[ --threads ] arg (=2)             Number of OpenMP threads per MPI task"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    arg_plsnetscorestsvoutput_file: "[ --outfile ] arg (=plsnet_scores.tsv)\\nOutput file path"
    save_resume: "Path to a file that stores job resume"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    print_program_version: "[ --version ]                      Print the program version"
    considered: "Bootstrap Options:"
    exists: "-t [ --targets ] arg                  File containing gene names of genes of "
    info_dot: "--resume-from arg                     Try to resume job from this file."
  }
  output {
    File out_stdout = stdout()
    File out_arg_plsnetscorestsvoutput_file = "${in_arg_plsnetscorestsvoutput_file}"
  }
}