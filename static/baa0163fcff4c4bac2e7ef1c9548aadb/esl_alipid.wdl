version 1.0

task Eslalipid {
  input {
    File? in_format
    String? out_format
    Boolean? noheader
    Boolean? dna
    Boolean? rna
    Boolean? amino
    String msa_file
  }
  command <<<
    esl_alipid \
      ~{msa_file} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (noheader) then "--noheader" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (amino) then "--amino" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_format: ": specify the input MSA file is in format <s>"
    out_format: ": write the output MSA in format <s>  [Clustal]"
    noheader: ": no header"
    dna: ": use DNA alphabet"
    rna: ": use RNA alphabet"
    amino: ": use protein alphabet"
    msa_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}