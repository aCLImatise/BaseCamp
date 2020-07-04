version 1.0

task Zerone {
  input {
    Boolean? mock
    Boolean? chip
    Boolean? window
    Boolean? quality
    Boolean? list_output
    Boolean? confidence
    String input_file_n
  }
  command <<<
    zerone \
      ~{input_file_n} \
      ~{true="--mock" false="" mock} \
      ~{true="--chip" false="" chip} \
      ~{true="--window" false="" window} \
      ~{true="--quality" false="" quality} \
      ~{true="--list-output" false="" list_output} \
      ~{true="--confidence" false="" confidence}
  >>>
  parameter_meta {
    mock: ": given file is a mock control"
    chip: ": given file is a ChIP-seq experiment"
    window: ": window size in bp (default 300)"
    quality: ": minimum mapping quality (default 20)"
    list_output: ": output list of targets (default table)"
    confidence: ": print targets only with higher confidence restricts intervals accordingly in list output"
    input_file_n: ""
  }
}