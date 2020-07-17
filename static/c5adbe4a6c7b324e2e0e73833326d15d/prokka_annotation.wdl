version 1.0

task ProkkaAnnotation.sh {
  input {
    String? usage_message
  }
  command <<<
    prokka_annotation.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}