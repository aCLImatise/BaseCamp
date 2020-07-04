version 1.0

task BowtieMapper.sh {
  input {
    String? usage_message
  }
  command <<<
    bowtie_mapper.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}