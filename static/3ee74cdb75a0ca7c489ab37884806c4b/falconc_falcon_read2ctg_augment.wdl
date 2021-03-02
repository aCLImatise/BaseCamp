version 1.0

task FalconcFalconread2ctgaugment {
  input {
    Boolean? help_syntax
    Boolean? phasefn_string_required
    Boolean? _string_required
    Boolean? _outfn_string
  }
  command <<<
    falconc falcon_read2ctg_augment \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (phasefn_string_required) then "-p" else ""} \
      ~{if (_string_required) then "-b" else ""} \
      ~{if (_outfn_string) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    phasefn_string_required: "=, --phase-fn=  string  REQUIRED  read2ctg.txt file"
    _string_required: "=, --bam-fn=    string  REQUIRED  bam/sam file of unphased reads mapped"
    _outfn_string: "=, --out-fn=    string  REQUIRED  mostly same as read2ctg.txt, but augmented"
  }
  output {
    File out_stdout = stdout()
  }
}