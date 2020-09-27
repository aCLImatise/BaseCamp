version 1.0

task FalconcCircorient {
  input {
    Boolean? help_syntax
    Boolean? _inputfn_string
    Boolean? _wlfn_string
    Boolean? window
    Boolean? _step_step
    Boolean? print
    String sequences
  }
  command <<<
    falconc circ_orient \
      ~{sequences} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_inputfn_string) then "-i" else ""} \
      ~{if (_wlfn_string) then "-w" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (_step_step) then "-s" else ""} \
      ~{if (print) then "--print" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _inputfn_string: "=, --input-fn=   string  REQUIRED  fasta (or fastq) file of circular"
    _wlfn_string: "=, --wl-fn=      string  \\\"\\\"        white list of sequences to rotate, one\\nper line, no spaces, no trailing spaces"
    window: "=          int     500       window size to caculate gc-skew"
    _step_step: "=, --step=       int     200       window step"
    print: "bool    false     print skew data to files\\n('SEQ.gc_skew.txt'), one per sequence\\n"
    sequences: "-o=, --output-fn=  string  REQUIRED  fasta (or fastq) file output"
  }
  output {
    File out_stdout = stdout()
  }
}