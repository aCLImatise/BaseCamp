version 1.0

task SpadesAssembly.sh {
  input {
    String? usage_message
  }
  command <<<
    spades_assembly.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}