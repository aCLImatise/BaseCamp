version 1.0

task SeidrAggregate {
  input {
    File? in_file
    Boolean? arg_irp_method
    Boolean? keep_directionality_information
    Boolean? arg_number_openmp
    File? force_overwrite_output
    File? arg_aggregatedsf_output
    Boolean? arg_auto_directory
    String sorting
    String exists
  }
  command <<<
    seidr aggregate \
      ~{sorting} \
      ~{exists} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_irp_method) then "-m" else ""} \
      ~{if (keep_directionality_information) then "-k" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (arg_aggregatedsf_output) then "-o" else ""} \
      ~{if (arg_auto_directory) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input files"
    arg_irp_method: "[ --method ] arg (=irp)            Method to aggregate networks [top1,\\ntop2, borda, irp]"
    keep_directionality_information: "[ --keep ]                         Keep directionality information"
    arg_number_openmp: "[ --threads ] arg (=1)             Number of OpenMP threads for parallel"
    force_overwrite_output: "[ --force ]                        Force overwrite output file if it"
    arg_aggregatedsf_output: "[ --outfile ] arg (=aggregated.sf) Output file name"
    arg_auto_directory: "[ --tempdir ] arg (=auto)          Directory to store temporary data"
    sorting: "Common Options:"
    exists: "-h [ --help ]                         Show this help message"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_arg_aggregatedsf_output = "${in_arg_aggregatedsf_output}"
  }
}