version 1.0

task CoordinateAdapter.sh {
  input {
    String? usage_message
  }
  command <<<
    coordinate_adapter.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}