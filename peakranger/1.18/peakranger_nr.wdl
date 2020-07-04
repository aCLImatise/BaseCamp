version 1.0

task PeakrangerNr {
  input {
    Boolean? arg_data_file
    Boolean? arg_control_file
    String? format
    Boolean? arg_read_length
    Boolean? verbose
    String var_input
  }
  command <<<
    peakranger nr \
      ~{var_input} \
      ~{true="-d" false="" arg_data_file} \
      ~{true="-c" false="" arg_control_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="-l" false="" arg_read_length} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg               data file"
    arg_control_file: "[ --control ] arg            control file"
    format: "the format of the data file, can be one of :  bowtie, sam, bam and bed"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    verbose: "show progress when possible"
    var_input: ""
  }
}