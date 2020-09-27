version 1.0

task Moabs {
  input {
    Boolean? str_input_files
    Boolean? cf
    Boolean? def
    Boolean? boleen_verbose_output
    String d_sun_at_tamu_dot_edu
  }
  command <<<
    moabs \
      ~{d_sun_at_tamu_dot_edu} \
      ~{if (str_input_files) then "-i" else ""} \
      ~{if (cf) then "--cf" else ""} \
      ~{if (def) then "--def" else ""} \
      ~{if (boleen_verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    str_input_files: "<str>   input files."
    cf: "<str>   configuration file."
    def: "<str>   overwrite definitions in configuration file. --def key=value"
    boleen_verbose_output: "<boleen>        verbose output  [0 or 1, default 0]"
    d_sun_at_tamu_dot_edu: "Usage : /usr/local/bin/moabs [options]"
  }
  output {
    File out_stdout = stdout()
  }
}