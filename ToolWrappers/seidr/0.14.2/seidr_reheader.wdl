version 1.0

task SeidrReheader {
  input {
    File? in_file
    Boolean? arg_auto_directory
  }
  command <<<
    seidr reheader \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_auto_directory) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_auto_directory: "[ --tempdir ] arg (=auto)  Directory to store temporary data"
  }
  output {
    File out_stdout = stdout()
  }
}