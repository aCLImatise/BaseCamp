version 1.0

task SeidrGraphstats {
  input {
    File? in_file
    Boolean? arg_last_score
    File? force_overwrite_output
    File? o
    String weights
  }
  command <<<
    seidr graphstats \
      ~{weights} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_last_score) then "-i" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_last_score: "[ --index ] arg (=last score)  Index of scores that should be used as"
    force_overwrite_output: "[ --force ]                    Force overwrite output file if it exists"
    o: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
    weights: "Common Options:"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_o = "${in_o}"
  }
}