version 1.0

task FalconcM4filtstage2 {
  input {
    Boolean? help_syntax
    Boolean? _minidt_float
    Boolean? _bestn_int
    Boolean? blacklist_in
    Boolean? _filteredoutput_required
  }
  command <<<
    falconc m4filt_stage2 \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_minidt_float) then "-m" else ""} \
      ~{if (_bestn_int) then "-b" else ""} \
      ~{if (blacklist_in) then "--blacklistIn" else ""} \
      ~{if (_filteredoutput_required) then "-f" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _minidt_float: "=, --minIdt=          float   90.0      set minIdt"
    _bestn_int: "=, --bestN=           int     10        set bestN"
    blacklist_in: "=          string  REQUIRED  set blacklistIn"
    _filteredoutput_required: "=, --filteredOutput=  string  REQUIRED  set filteredOutput"
  }
  output {
    File out_stdout = stdout()
  }
}