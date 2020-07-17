version 1.0

task GffToBed.sh {
  input {
    String? usage_message
  }
  command <<<
    gff_to_bed.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}