version 1.0

task SeidrThreshold {
  input {
    File? in_file
    Boolean? arg_lowest_threshold
    Boolean? arg_highest_threshold
    Boolean? arg_last_score
    Boolean? arg_number_create
    Boolean? arg_number_print
    Boolean? arg_number_openmp
    File? force_overwrite_output
    File? var_8
    String sorting
  }
  command <<<
    seidr threshold \
      ~{sorting} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_lowest_threshold) then "-m" else ""} \
      ~{if (arg_highest_threshold) then "-M" else ""} \
      ~{if (arg_last_score) then "-i" else ""} \
      ~{if (arg_number_create) then "-n" else ""} \
      ~{if (arg_number_print) then "-p" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (var_8) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_lowest_threshold: "[ --min ] arg (=0)             Lowest threshold value to check"
    arg_highest_threshold: "[ --max ] arg (=0)             Highest threshold value to check"
    arg_last_score: "[ --index ] arg (=last score)  Score column to use as edge weights"
    arg_number_create: "[ --nsteps ] arg (=100)        Number of breaks to create for testing"
    arg_number_print: "[ --precision ] arg (=8)       Number of decimal points to print"
    arg_number_openmp: "[ --threads ] arg (=1)         Number of OpenMP threads for parallel"
    force_overwrite_output: "[ --force ]                    Force overwrite output file if it exists"
    var_8: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
    sorting: "Common Options:"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_var_8 = "${in_var_8}"
  }
}