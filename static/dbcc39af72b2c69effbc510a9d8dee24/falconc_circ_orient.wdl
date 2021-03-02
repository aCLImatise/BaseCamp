version 1.0

task FalconcCircorient {
  input {
    Boolean? help_syntax
    Boolean? inputfn_string_required
    Boolean? wlfn_string_list
    Boolean? window
    Boolean? _step_step
    Boolean? print
    String sequences
  }
  command <<<
    falconc circ_orient \
      ~{sequences} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (inputfn_string_required) then "-i" else ""} \
      ~{if (wlfn_string_list) then "-w" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (_step_step) then "-s" else ""} \
      ~{if (print) then "--print" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    inputfn_string_required: "=, --input-fn=   string  REQUIRED  fasta (or fastq) file of circular"
    wlfn_string_list: "=, --wl-fn=      string  \\\"\\\"        white list of sequences to rotate, one\\nper line, no spaces, no trailing spaces"
    window: "=          int     500       window size to caculate gc-skew"
    _step_step: "=, --step=       int     200       window step"
    print: "bool    false     print skew data to files\\n('SEQ.gc_skew.txt'), one per sequence\\n"
    sequences: "-o=, --output-fn=  string  REQUIRED  fasta (or fastq) file output"
  }
  output {
    File out_stdout = stdout()
  }
}