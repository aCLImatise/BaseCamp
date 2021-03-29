version 1.0

task SeidrRoc {
  input {
    Boolean? arg_gold_standard
    Boolean? n
    Boolean? arg_last_score
    Boolean? arg_number_consider
    Boolean? arg_fraction_include
    Boolean? arg_number_print
    Boolean? arg_list_transcription
    Boolean? arg_true_negative
    Boolean? calculate_roc_scores
    Boolean? arg_number_openmp
    File? force_overwrite_output
    File? var_11
    String sei_dr_file
    String sorting
  }
  command <<<
    seidr roc \
      ~{sei_dr_file} \
      ~{sorting} \
      ~{if (arg_gold_standard) then "-g" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (arg_last_score) then "-i" else ""} \
      ~{if (arg_number_consider) then "-e" else ""} \
      ~{if (arg_fraction_include) then "-E" else ""} \
      ~{if (arg_number_print) then "-p" else ""} \
      ~{if (arg_list_transcription) then "-t" else ""} \
      ~{if (arg_true_negative) then "-x" else ""} \
      ~{if (calculate_roc_scores) then "-a" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (var_11) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    arg_gold_standard: "[ --gold ] arg                 Gold standard (true edges) input file"
    n: "[ --network ] arg              Input SeidrFile [can be positional]"
    arg_last_score: "[ --index ] arg (=last score)  Index of score to use"
    arg_number_consider: "[ --edges ] arg (=all)         Number of top edges to consider"
    arg_fraction_include: "[ --fraction ] arg (=all)      Fraction of gold standard edges to include"
    arg_number_print: "[ --points ] arg (=all)        Number of data points to print"
    arg_list_transcription: "[ --tfs ] arg                  List of transcription factors to consider"
    arg_true_negative: "[ --neg ] arg                  True negative edges"
    calculate_roc_scores: "[ --all ]                      Calculate ROC for all scores in the"
    arg_number_openmp: "[ --threads ] arg (=1)         Number of OpenMP threads for parallel"
    force_overwrite_output: "[ --force ]                    Force overwrite output file if it exists"
    var_11: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
    sei_dr_file: "OpenMP Options:"
    sorting: "Common Options:"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_var_11 = "${in_var_11}"
  }
}