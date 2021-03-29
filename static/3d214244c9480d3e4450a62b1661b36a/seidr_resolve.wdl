version 1.0

task SeidrResolve {
  input {
    File? in_file
    Boolean? arg_seidr_file
    File? force_overwrite_output
    File? o
    String f_arg_infomap
  }
  command <<<
    seidr resolve \
      ~{f_arg_infomap} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_seidr_file) then "-s" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_seidr_file: "[ --seidr-file ] arg         Seidr file which should be used to resolve"
    force_overwrite_output: "[ --force ]                  Force overwrite output file if it exists"
    o: "[ --outfile ] arg (=-)       Output file name ['-' for stdout]"
    f_arg_infomap: "-F [ --format ] arg (=infomap)  File format to resolve"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_o = "${in_o}"
  }
}