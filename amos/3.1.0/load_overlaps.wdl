version 1.0

task LoadOverlaps {
  input {
    String? b
    String delta_file
  }
  command <<<
    load-overlaps \
      ~{delta_file} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    delta_file: ""
  }
}