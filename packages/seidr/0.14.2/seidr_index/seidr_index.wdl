version 1.0

task SeidrIndex {
  input {
    File? in_file
    File? force_overwrite_output
  }
  command <<<
    seidr index \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (force_overwrite_output) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    force_overwrite_output: "[ --force ]         Force overwrite output file if it exists"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
  }
}