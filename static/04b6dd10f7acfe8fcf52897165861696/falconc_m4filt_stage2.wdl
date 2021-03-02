version 1.0

task FalconcM4filtstage2 {
  input {
    Boolean? help_syntax
    Boolean? _minidt_float
    Boolean? _bestn_bestn
    Boolean? min_overhang
    Boolean? blacklist_in
    Boolean? _filteredoutput_string
    Int m_four_filt_stage_two
  }
  command <<<
    falconc m4filt_stage2 \
      ~{m_four_filt_stage_two} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_minidt_float) then "-m" else ""} \
      ~{if (_bestn_bestn) then "-b" else ""} \
      ~{if (min_overhang) then "--minOverhang" else ""} \
      ~{if (blacklist_in) then "--blacklistIn" else ""} \
      ~{if (_filteredoutput_string) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _minidt_float: "=, --minIdt=          float   90.0      set minIdt"
    _bestn_bestn: "=, --bestN=           int     10        set bestN"
    min_overhang: "=          int     0         set minOverhang"
    blacklist_in: "=          string  REQUIRED  set blacklistIn"
    _filteredoutput_string: "=, --filteredOutput=  string  REQUIRED  set filteredOutput"
    m_four_filt_stage_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}