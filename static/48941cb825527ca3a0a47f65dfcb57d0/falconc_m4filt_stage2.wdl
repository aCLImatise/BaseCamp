version 1.0

task FalconcM4filtstage2 {
  input {
    Boolean? help_syntax
    Boolean? _minidt_float
    Boolean? _bestn_bestn
    Boolean? blacklist_in
    Boolean? _filteredoutput_string
  }
  command <<<
    falconc m4filt_stage2 \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_minidt_float) then "-m" else ""} \
      ~{if (_bestn_bestn) then "-b" else ""} \
      ~{if (blacklist_in) then "--blacklistIn" else ""} \
      ~{if (_filteredoutput_string) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _minidt_float: "=, --minIdt=          float   90.0      set minIdt"
    _bestn_bestn: "=, --bestN=           int     10        set bestN"
    blacklist_in: "=          string  REQUIRED  set blacklistIn"
    _filteredoutput_string: "=, --filteredOutput=  string  REQUIRED  set filteredOutput"
  }
  output {
    File out_stdout = stdout()
  }
}