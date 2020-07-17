version 1.0

task FilterFasta.sh {
  input {
    String? usage_message
  }
  command <<<
    filter_fasta.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}