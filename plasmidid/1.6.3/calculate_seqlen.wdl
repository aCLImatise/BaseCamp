version 1.0

task CalculateSeqlen.sh {
  input {
    String? usage_message
  }
  command <<<
    calculate_seqlen.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}