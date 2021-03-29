version 1.0

task SeidrSample {
  input {
    File? in_file
    Boolean? _sample_replacement
    Boolean? arg_number_report
    Boolean? arg_number_sample
    Boolean? arg_fraction_sample
    File? force_overwrite_output
    File? o
  }
  command <<<
    seidr sample \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (_sample_replacement) then "-r" else ""} \
      ~{if (arg_number_report) then "-p" else ""} \
      ~{if (arg_number_sample) then "-n" else ""} \
      ~{if (arg_fraction_sample) then "-F" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    _sample_replacement: "[ --replacement ]         Sample with replacement"
    arg_number_report: "[ --precision ] arg (=8)  Number of significant digits to report"
    arg_number_sample: "[ --nedges ] arg          Number of edges to sample"
    arg_fraction_sample: "[ --fraction ] arg        Fraction of edges to sample"
    force_overwrite_output: "[ --force ]               Force overwrite output file if it exists"
    o: "[ --outfile ] arg (=-)    Output file name ['-' for stdout]"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_o = "${in_o}"
  }
}