version 1.0

task EslAlipid {
  input {
    String? in_format
    String? out_format
    Boolean? noheader
    Boolean? dna
    Boolean? rna
    Boolean? amino
    String msa_file
  }
  command <<<
    esl-alipid \
      ~{msa_file} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--noheader" false="" noheader} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="--amino" false="" amino}
  >>>
  parameter_meta {
    in_format: ": specify the input MSA file is in format <s>"
    out_format: ": write the output MSA in format <s>  [Clustal]"
    noheader: ": no header"
    dna: ": use DNA alphabet"
    rna: ": use RNA alphabet"
    amino: ": use protein alphabet"
    msa_file: ""
  }
}