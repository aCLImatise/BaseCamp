version 1.0

task BlastToBed.sh {
  input {
    String? usage_message
  }
  command <<<
    blast_to_bed.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}