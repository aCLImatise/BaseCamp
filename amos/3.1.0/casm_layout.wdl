version 1.0

task CasmLayout {
  input {
    String? b
    String delta_file
  }
  command <<<
    casm-layout \
      ~{delta_file} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    delta_file: ""
  }
}