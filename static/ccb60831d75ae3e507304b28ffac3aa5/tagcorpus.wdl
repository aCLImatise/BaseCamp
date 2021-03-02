version 1.0

task Tagcorpus {
  input {
    File? documents
    File? type_pairs
    File? autodetect
    String? tokenize_characters
  }
  command <<<
    tagcorpus \
      ~{if defined(documents) then ("--documents " +  '"' + documents + '"') else ""} \
      ~{if defined(type_pairs) then ("--type-pairs " +  '"' + type_pairs + '"') else ""} \
      ~{if defined(autodetect) then ("--autodetect " +  '"' + autodetect + '"') else ""} \
      ~{if defined(tokenize_characters) then ("--tokenize-characters " +  '"' + tokenize_characters + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    documents: "Read input from file instead of from STDIN"
    type_pairs: "Types of pairs that are allowed"
    autodetect: "autodetect on"
    tokenize_characters: "single-character tokenization on"
  }
  output {
    File out_stdout = stdout()
  }
}