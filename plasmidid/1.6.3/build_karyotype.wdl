version 1.0

task BuildKaryotype.sh {
  input {
    String? usage_message
  }
  command <<<
    build_karyotype.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}