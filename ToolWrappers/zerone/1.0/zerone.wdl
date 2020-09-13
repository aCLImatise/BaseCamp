version 1.0

task Zerone {
  input {
    Boolean? mock
    Boolean? chip
    Boolean? window
    Boolean? quality
    Boolean? list_output
    Boolean? confidence
    File input_file_n
  }
  command <<<
    zerone \
      ~{input_file_n} \
      ~{if (mock) then "--mock" else ""} \
      ~{if (chip) then "--chip" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (quality) then "--quality" else ""} \
      ~{if (list_output) then "--list-output" else ""} \
      ~{if (confidence) then "--confidence" else ""}
  >>>
  parameter_meta {
    mock: ": given file is a mock control"
    chip: ": given file is a ChIP-seq experiment"
    window: ": window size in bp (default 300)"
    quality: ": minimum mapping quality (default 20)"
    list_output: ": output list of targets (default table)"
    confidence: ": print targets only with higher confidence\\nrestricts intervals accordingly in list output"
    input_file_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}