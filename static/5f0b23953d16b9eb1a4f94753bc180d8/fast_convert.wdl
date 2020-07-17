version 1.0

task FastConvert {
  input {
    Boolean? discard_q
    String? mock_q
  }
  command <<<
    fast_convert \
      ~{true="--discard_q" false="" discard_q} \
      ~{if defined(mock_q) then ("--mock_q " +  '"' + mock_q + '"') else ""}
  >>>
  parameter_meta {
    discard_q: "Discard quality information from fastq, use with --mock_q. (default: False)"
    mock_q: "Mock quality value, valid for convert=aq|qq. (default: 10)"
  }
}