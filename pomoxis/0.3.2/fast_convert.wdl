version 1.0

task FastConvert {
  input {
    Boolean discardDiscardQ
    String mockMockQ
  }
  command <<<
    fast_convert \
      ~{true="--discard_q" false="" discardDiscardQ} \
      ~{if defined(mockMockQ) then ("--mock_q " +  '"' + mockMockQ + '"') else ""}
  >>>
}