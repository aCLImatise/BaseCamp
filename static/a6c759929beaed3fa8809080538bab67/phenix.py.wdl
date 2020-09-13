version 1.0

task Phenixpy {
  input {
    Boolean? debug
  }
  command <<<
    phenix_py \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: "More verbose logging (default: turned off)."
  }
  output {
    File out_stdout = stdout()
  }
}