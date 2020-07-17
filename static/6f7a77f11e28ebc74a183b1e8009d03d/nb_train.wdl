version 1.0

task NbTrain {
  input {
    Boolean? contact
    Int? desired_oligonucleotide_default
    String? s
    String? m
  }
  command <<<
    nb-train \
      ~{true="--contact" false="" contact} \
      ~{if defined(desired_oligonucleotide_default) then ("-n " +  '"' + desired_oligonucleotide_default + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    contact: "Print contact information."
    desired_oligonucleotide_default: "Desired oligonucleotide length (default = 8)."
    s: ""
    m: ""
  }
}