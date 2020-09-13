version 1.0

task NanopolishMakerangepy {
  input {
    Int? segment_length
    Int? overlap_length
  }
  command <<<
    nanopolish_makerange_py \
      ~{if defined(segment_length) then ("--segment-length " +  '"' + segment_length + '"') else ""} \
      ~{if defined(overlap_length) then ("--overlap-length " +  '"' + overlap_length + '"') else ""}
  >>>
  parameter_meta {
    segment_length: ""
    overlap_length: ""
  }
  output {
    File out_stdout = stdout()
  }
}