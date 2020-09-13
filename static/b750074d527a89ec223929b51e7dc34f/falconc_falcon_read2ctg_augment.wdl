version 1.0

task FalconcFalconread2ctgaugment {
  input {
    Boolean? help_syntax
    Boolean? _phasefn_string
    Boolean? _bamfn_string
    Boolean? _outfn_string
  }
  command <<<
    falconc falcon_read2ctg_augment \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_phasefn_string) then "-p" else ""} \
      ~{if (_bamfn_string) then "-b" else ""} \
      ~{if (_outfn_string) then "-o" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _phasefn_string: "=, --phase-fn=  string  REQUIRED  read2ctg.txt file"
    _bamfn_string: "=, --bam-fn=    string  REQUIRED  bam/sam file of unphased reads mapped"
    _outfn_string: "=, --out-fn=    string  REQUIRED  mostly same as read2ctg.txt, but augmented"
  }
  output {
    File out_stdout = stdout()
  }
}