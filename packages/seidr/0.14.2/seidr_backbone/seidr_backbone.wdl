version 1.0

task SeidrBackbone {
  input {
    File? in_file
    Boolean? arg_last_index
    Boolean? arg_filter_subset
    File? force_overwrite_output
    File? o
    Boolean? arg_auto_directory
  }
  command <<<
    seidr backbone \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_last_index) then "-i" else ""} \
      ~{if (arg_filter_subset) then "-F" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (arg_auto_directory) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_last_index: "[ --index ] arg (=last index)  Score index to use"
    arg_filter_subset: "[ --filter ] arg (=no filter)  Subset network to edges with at least this\\nSD. 1.28, 1.64, and 2.32 correspond to\\n~P0.1, 0.05 and 0.01."
    force_overwrite_output: "[ --force ]                    Force overwrite output file if it exists"
    o: "[ --out-file ] arg (=auto)     Output file name ['-' for stdout]"
    arg_auto_directory: "[ --tempdir ] arg (=auto)      Directory to store temporary data"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_o = "${in_o}"
  }
}