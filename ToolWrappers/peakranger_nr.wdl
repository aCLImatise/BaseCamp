version 1.0

task PeakrangerNr {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    File? format
    Boolean? arg_read_length
    Boolean? verbose
    String var_input
  }
  command <<<
    peakranger nr \
      ~{var_input} \
      ~{if (arg_data_file) then "-d" else ""} \
      ~{if (arg_control_file) then "-c" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (arg_read_length) then "-l" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg               data file"
    arg_control_file: "[ --control ] arg            control file"
    format: "the format of the data file, can be one of :\\nbowtie, sam, bam and bed"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    verbose: "show progress when possible"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}