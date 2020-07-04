version 1.0

task EslAlirev {
  input {
    String? in_format
    String? out_format
    Boolean? dna
    Boolean? rna
    Boolean? options
  }
  command <<<
    esl-alirev \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    in_format: ": specify the input MSA file is in format <s>"
    out_format: ": write the output MSA in format <s>"
    dna: ": use DNA alphabet"
    rna: ": use RNA alphabet"
    options: ""
  }
}