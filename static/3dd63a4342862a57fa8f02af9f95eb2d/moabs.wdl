version 1.0

task Moabs {
  input {
    Boolean? str_input_files
    Boolean? cf
    Boolean? def
    Boolean? boleen_verbose_output
  }
  command <<<
    moabs \
      ~{true="-i" false="" str_input_files} \
      ~{true="--cf" false="" cf} \
      ~{true="--def" false="" def} \
      ~{true="-v" false="" boleen_verbose_output}
  >>>
  parameter_meta {
    str_input_files: "<str>   input files."
    cf: "<str>   configuration file."
    def: "<str>   overwrite definitions in configuration file. --def key=value"
    boleen_verbose_output: "<boleen>        verbose output  [0 or 1, default 0]"
  }
}