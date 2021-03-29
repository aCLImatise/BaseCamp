version 1.0

task Mi {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? arg_spline_order
    Boolean? arg_auto_number
    Boolean? arg_saveload_raw
    Boolean? var_5
    Boolean? arg_number_genes
    Boolean? arg_directory_path
    Boolean? arg_number_openmp
    Boolean? force_overwrite_output
    File? arg_miscorestsv_output
    File? save_resume
    Boolean? arg_verbosity_level
    Boolean? print_program_version
    String exists
    String info_dot
  }
  command <<<
    mi \
      ~{exists} \
      ~{info_dot} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (arg_spline_order) then "-s" else ""} \
      ~{if (arg_auto_number) then "-b" else ""} \
      ~{if (arg_saveload_raw) then "-M" else ""} \
      ~{if (var_5) then "-m" else ""} \
      ~{if (arg_number_genes) then "-B" else ""} \
      ~{if (arg_directory_path) then "-T" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (arg_miscorestsv_output) then "-o" else ""} \
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
    arg_spline_order: "[ --spline ] arg (=3)              Spline order"
    arg_auto_number: "[ --bins ] arg (=auto)             Number of bins"
    arg_saveload_raw: "[ --mi-file ] arg                  Save/load raw MI to/from this file"
    var_5: "[ --mode ] arg (=RAW)              Post processing [RAW, CLR, ARACNE]"
    arg_number_genes: "[ --batch-size ] arg (=0)          Number of genes in MPI batch"
    arg_directory_path: "[ --tempdir ] arg                  Temporary directory path"
    arg_number_openmp: "[ --threads ] arg (=2)             Number of OpenMP threads per MPI task"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    arg_miscorestsv_output: "[ --outfile ] arg (=mi_scores.tsv) Output file path"
    save_resume: "Path to a file that stores job resume"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    print_program_version: "[ --version ]                      Print the program version"
    exists: "-t [ --targets ] arg                  File containing gene names of genes of "
    info_dot: "--resume-from arg                     Try to resume job from this file."
  }
  output {
    File out_stdout = stdout()
    File out_arg_miscorestsv_output = "${in_arg_miscorestsv_output}"
  }
}