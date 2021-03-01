version 1.0

task CoolerInfo {
  input {
    String? field
    Boolean? metadata
    File? out
    String cool_path
  }
  command <<<
    cooler info \
      ~{cool_path} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if (metadata) then "--metadata" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    field: "Print the value of a specific info field."
    metadata: "Print the user metadata in JSON format."
    out: "Output file (defaults to stdout)"
    cool_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}