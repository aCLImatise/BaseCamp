version 1.0

task Eslalirev {
  input {
    File? in_format
    String? out_format
    Boolean? dna
    Boolean? rna
    Boolean? options
  }
  command <<<
    esl_alirev \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    in_format: ": specify the input MSA file is in format <s>"
    out_format: ": write the output MSA in format <s>"
    dna: ": use DNA alphabet"
    rna: ": use RNA alphabet"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}