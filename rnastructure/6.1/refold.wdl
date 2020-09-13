version 1.0

task Refold {
  input {
    Boolean? maximum
    Boolean? percent
    Boolean? window
    File save_file
    File ct_file
  }
  command <<<
    refold \
      ~{save_file} \
      ~{ct_file} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (window) then "--window" else ""}
  >>>
  parameter_meta {
    maximum: "Specify a maximum number of structures.\\nDefault is 20 structures."
    percent: "Specify a maximum percent energy difference.\\nDefault is 10 percent (specified as 10, not 0.1)."
    window: "Specify a window size.\\nDefault is determined by the length of the sequence.\\n"
    save_file: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}