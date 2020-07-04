version 1.0

task TraceConvert {
  input {
    String convert_trace
    String? in_format
    String? out_format
    String in
    String out
  }
  command <<<
    trace_convert \
      ~{convert_trace} \
      ~{in_format} \
      ~{out_format} \
      ~{in} \
      ~{out}
  >>>
  parameter_meta {
    convert_trace: ""
    in_format: ""
    out_format: ""
    in: ""
    out: ""
  }
}