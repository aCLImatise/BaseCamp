version 1.0

task Tigress {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? deprecated_transform_data
    Boolean? transform_data_zscores
    Boolean? arg_maximum_number
    Boolean? arg_minimum_lambda
    Boolean? arg_ensemble_size
    Boolean? arg_number_genes
    Boolean? arg_directory_path
    Boolean? arg_number_openmp
    Boolean? arg_file_containing_gene_names_ofinterest
    File? arg_tigressscorestsvoutput_file
    File? save_resume
    Boolean? arg_verbosity_level
    Boolean? force_overwrite_output
    String maximum_dot
    String info_dot
    String exists
  }
  command <<<
    tigress \
      ~{maximum_dot} \
      ~{info_dot} \
      ~{exists} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (deprecated_transform_data) then "-s" else ""} \
      ~{if (transform_data_zscores) then "-S" else ""} \
      ~{if (arg_maximum_number) then "-n" else ""} \
      ~{if (arg_minimum_lambda) then "-l" else ""} \
      ~{if (arg_ensemble_size) then "-e" else ""} \
      ~{if (arg_number_genes) then "-B" else ""} \
      ~{if (arg_directory_path) then "-T" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (arg_file_containing_gene_names_ofinterest) then "-t" else ""} \
      ~{if (arg_tigressscorestsvoutput_file) then "-o" else ""} \
      ~{if defined(save_resume) then ("--save-resume " +  '"' + save_resume + '"') else ""} \
      ~{if (arg_verbosity_level) then "-v" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    arg_expression_table: "[ --infile ] arg                   The expression table (without headers)"
    _arg_file_containing_gene_names: "[ --genes ] arg                    File containing gene names"
    deprecated_transform_data: "[ --scale ]                        (deprecated) Transform data to z-scores"
    transform_data_zscores: "[ --no-scale ]                     Do not transform data to z-scores"
    arg_maximum_number: "[ --nlambda ] arg (=10)            The maximum number of lambda values"
    arg_minimum_lambda: "[ --min-lambda ] arg (=0.3)        The minimum lambda as a fraction of the"
    arg_ensemble_size: "[ --ensemble ] arg (=1000)         The ensemble size"
    arg_number_genes: "[ --batch-size ] arg (=0)          Number of genes in MPI batch"
    arg_directory_path: "[ --tempdir ] arg                  Temporary directory path"
    arg_number_openmp: "[ --threads ] arg (=2)             Number of OpenMP threads per MPI task"
    arg_file_containing_gene_names_ofinterest: "[ --targets ] arg                  File containing gene names of genes of\\ninterest. The network will only be\\ncalculated using these as the sources\\nof potential connections."
    arg_tigressscorestsvoutput_file: "[ --outfile ] arg (=tigress_scores.tsv)\\nOutput file path"
    save_resume: "Path to a file that stores job resume"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    maximum_dot: "--allow-low-var                       Disable low variance filter when "
    info_dot: "--resume-from arg                     Try to resume job from this file."
    exists: "-V [ --version ]                      Print the program version"
  }
  output {
    File out_stdout = stdout()
    File out_arg_tigressscorestsvoutput_file = "${in_arg_tigressscorestsvoutput_file}"
  }
}