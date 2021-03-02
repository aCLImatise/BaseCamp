version 1.0

task Randfold {
  input {
    String? mononucleotide_shuffling
    String? shuffling
    Int? chain__shuffling
    String method
    File file_name
    Int number_of_randomization_s
  }
  command <<<
    randfold \
      ~{method} \
      ~{file_name} \
      ~{number_of_randomization_s} \
      ~{if defined(mononucleotide_shuffling) then ("-s " +  '"' + mononucleotide_shuffling + '"') else ""} \
      ~{if defined(shuffling) then ("-d " +  '"' + shuffling + '"') else ""} \
      ~{if defined(chain__shuffling) then ("-m " +  '"' + chain__shuffling + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mononucleotide_shuffling: "mononucleotide shuffling"
    shuffling: "shuffling"
    chain__shuffling: "chain 1 shuffling"
    method: ""
    file_name: ""
    number_of_randomization_s: ""
  }
  output {
    File out_stdout = stdout()
  }
}