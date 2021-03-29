version 1.0

task SeidrAdjacency {
  input {
    File? in_file
    Boolean? arg_last_index
    Boolean? print_matrix_diagonal
    Boolean? arg_fill_character
    Boolean? arg_number_report
    File? force_overwrite_output
    File? o
    String format
  }
  command <<<
    seidr adjacency \
      ~{format} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_last_index) then "-i" else ""} \
      ~{if (print_matrix_diagonal) then "-D" else ""} \
      ~{if (arg_fill_character) then "-m" else ""} \
      ~{if (arg_number_report) then "-p" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_last_index: "[ --index ] arg (=last index)  Score index to use"
    print_matrix_diagonal: "[ --diagonal ]                 Print matrix diagonal for triangular output"
    arg_fill_character: "[ --missing ] arg (=0)         Fill character for missing edges"
    arg_number_report: "[ --precision ] arg (=8)       Number of significant digits to report"
    force_overwrite_output: "[ --force ]                    Force overwrite output file if it exists"
    o: "[ --out-file ] arg (=-)        Output file name ['-' for stdout]"
    format: "-F [ --fmt ] arg (=m)             Output format ['m','lm']"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_o = "${in_o}"
  }
}