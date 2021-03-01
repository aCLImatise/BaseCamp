version 1.0

task FalconcFalconread2ctgaugment {
  input {
    Boolean? help_syntax
    Boolean? phasefn_string_required
    Boolean? _string_required
    Boolean? _outfn_string
    Int falcon_read_two_ctg_augment
  }
  command <<<
    falconc falcon_read2ctg_augment \
      ~{falcon_read_two_ctg_augment} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (phasefn_string_required) then "-p" else ""} \
      ~{if (_string_required) then "-b" else ""} \
      ~{if (_outfn_string) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    phasefn_string_required: "=, --phase-fn=  string  REQUIRED  read2ctg.txt file"
    _string_required: "=, --bam-fn=    string  REQUIRED  bam/sam file of unphased reads mapped"
    _outfn_string: "=, --out-fn=    string  REQUIRED  mostly same as read2ctg.txt, but augmented"
    falcon_read_two_ctg_augment: ""
  }
  output {
    File out_stdout = stdout()
  }
}