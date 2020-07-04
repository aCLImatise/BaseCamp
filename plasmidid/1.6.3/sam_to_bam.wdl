version 1.0

task SamToBam.sh {
  input {
    String? usage_message
  }
  command <<<
    sam_to_bam.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}