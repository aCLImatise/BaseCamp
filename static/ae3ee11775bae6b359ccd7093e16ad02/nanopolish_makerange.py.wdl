version 1.0

task NanopolishMakerangepy {
  input {
    Int? segment_length
  }
  command <<<
    nanopolish_makerange_py \
      ~{if defined(segment_length) then ("--segment-length " +  '"' + segment_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    segment_length: ""
  }
  output {
    File out_stdout = stdout()
  }
}