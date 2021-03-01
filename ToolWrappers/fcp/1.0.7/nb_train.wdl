version 1.0

task Nbtrain {
  input {
    Boolean? contact
    Int? desired_oligonucleotide_length
    String? m
    File? s
  }
  command <<<
    nb_train \
      ~{if (contact) then "--contact" else ""} \
      ~{if defined(desired_oligonucleotide_length) then ("-n " +  '"' + desired_oligonucleotide_length + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contact: "Print contact information."
    desired_oligonucleotide_length: "Desired oligonucleotide length (default = 8)."
    m: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}