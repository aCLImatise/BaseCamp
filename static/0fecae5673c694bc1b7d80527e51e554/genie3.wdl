version 1.0

task Genie3 {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? deprecated_transform_data
    Boolean? no_scale
    Boolean? arg_node_size
    Boolean? arg_minimal_proportion
    Boolean? arg_alpha_value
    Boolean? arg_number_random
    Boolean? arg_sqrtm_number
    Boolean? arg_number_genes
    Boolean? arg_directory_path
    Boolean? arg_number_openmp
    Boolean? force_overwrite_output
    File? arg_geniescorestsvoutput_file
    File? save_resume
    Boolean? arg_verbosity_level
    Boolean? print_program_version
    String tree
    String exists
    String info_dot
  }
  command <<<
    genie3 \
      ~{tree} \
      ~{exists} \
      ~{info_dot} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (deprecated_transform_data) then "-s" else ""} \
      ~{if (no_scale) then "--no-scale" else ""} \
      ~{if (arg_node_size) then "-N" else ""} \
      ~{if (arg_minimal_proportion) then "-p" else ""} \
      ~{if (arg_alpha_value) then "-a" else ""} \
      ~{if (arg_number_random) then "-n" else ""} \
      ~{if (arg_sqrtm_number) then "-m" else ""} \
      ~{if (arg_number_genes) then "-B" else ""} \
      ~{if (arg_directory_path) then "-T" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (arg_geniescorestsvoutput_file) then "-o" else ""} \
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
    arg_node_size: "[ --min-node-size ] arg (=5)       Minimum node size"
    arg_minimal_proportion: "[ --min-prop ] arg (=0.1)          Minimal proportion in random forest"
    arg_alpha_value: "[ --alpha ] arg (=0.5)             Alpha value for random forests"
    arg_number_random: "[ --ntree ] arg (=1000)            Number of random forest trees to grow"
    arg_sqrtm_number: "[ --mtry ] arg (=sqrt(m))          Number of features to sample in each"
    arg_number_genes: "[ --batch-size ] arg (=0)          Number of genes in MPI batch"
    arg_directory_path: "[ --tempdir ] arg                  Temporary directory path"
    arg_number_openmp: "[ --threads ] arg (=2)             Number of OpenMP threads per MPI task"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    arg_geniescorestsvoutput_file: "[ --outfile ] arg (=genie3_scores.tsv)\\nOutput file path"
    save_resume: "Path to a file that stores job resume"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    print_program_version: "[ --version ]                      Print the program version"
    tree: "MPI Options:"
    exists: "-t [ --targets ] arg                  File containing gene names of genes of "
    info_dot: "--resume-from arg                     Try to resume job from this file."
  }
  output {
    File out_stdout = stdout()
    File out_arg_geniescorestsvoutput_file = "${in_arg_geniescorestsvoutput_file}"
  }
}