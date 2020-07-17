version 1.0

task Smoother {
  input {
    String? format
    String? file
  }
  command <<<
    smoother \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    format: ""
    file: ""
  }
}