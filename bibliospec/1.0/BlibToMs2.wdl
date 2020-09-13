version 1.0

task BlibToMs2 {
  input {
    File? arg_name_output
    Boolean? arg_precision_peak_mz
    Boolean? arg_precision_peak_intensitiesdefault
    Boolean? arg_status_control
    String library
  }
  command <<<
    BlibToMs2 \
      ~{library} \
      ~{if (arg_name_output) then "-f" else ""} \
      ~{if (arg_precision_peak_mz) then "-m" else ""} \
      ~{if (arg_precision_peak_intensitiesdefault) then "-i" else ""} \
      ~{if (arg_status_control) then "-v" else ""}
  >>>
  parameter_meta {
    arg_name_output: "[ --file-name ] arg                Name the output ms2 file.  Default is\\n<library name>.ms2."
    arg_precision_peak_mz: "[ --mz-precision ] arg (=2)        Precision for peak m/z printed to ms2.\\nDefault 2."
    arg_precision_peak_intensitiesdefault: "[ --intensity-precision ] arg (=1) Precision for peak intensities.\\nDefault 1."
    arg_status_control: "[ --verbosity ] arg (=status)      Control the level of output to stderr.\\n(silent, error, status, warn, debug,\\ndetail, all)  Default status."
    library: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_name_output = "${in_arg_name_output}"
  }
}