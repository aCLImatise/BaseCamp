version 1.0

task BlibToMs2 {
  input {
    Boolean? arg_name_output
    Boolean? arg_precision_peak
    Boolean? arg_precision_default
    Boolean? arg_status_control
    String library
  }
  command <<<
    BlibToMs2 \
      ~{library} \
      ~{true="-f" false="" arg_name_output} \
      ~{true="-m" false="" arg_precision_peak} \
      ~{true="-i" false="" arg_precision_default} \
      ~{true="-v" false="" arg_status_control}
  >>>
  parameter_meta {
    arg_name_output: "[ --file-name ] arg                Name the output ms2 file.  Default is  <library name>.ms2."
    arg_precision_peak: "[ --mz-precision ] arg (=2)        Precision for peak m/z printed to ms2.  Default 2."
    arg_precision_default: "[ --intensity-precision ] arg (=1) Precision for peak intensities.   Default 1."
    arg_status_control: "[ --verbosity ] arg (=status)      Control the level of output to stderr.  (silent, error, status, warn, debug,  detail, all)  Default status."
    library: ""
  }
}