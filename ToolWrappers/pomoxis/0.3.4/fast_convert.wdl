version 1.0

task FastConvert {
  input {
    Boolean? discard_q
    Int? mock_q
  }
  command <<<
    fast_convert \
      ~{if (discard_q) then "--discard_q" else ""} \
      ~{if defined(mock_q) then ("--mock_q " +  '"' + mock_q + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    discard_q: "Discard quality information from fastq, use with --mock_q.\\n(default: False)"
    mock_q: "Mock quality value, valid for convert=aq|qq. (default: 10)"
  }
  output {
    File out_stdout = stdout()
  }
}