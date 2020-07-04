version 1.0

task ConvertTrace {
  input {
    String? in_format
    String? out_format
    String in
    String out
  }
  command <<<
    convert_trace \
      ~{in_format} \
      ~{out_format} \
      ~{in} \
      ~{out}
  >>>
  parameter_meta {
    in_format: ""
    out_format: ""
    in: ""
    out: ""
  }
}