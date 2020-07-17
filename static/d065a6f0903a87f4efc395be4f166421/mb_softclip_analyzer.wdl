version 1.0

task MbSoftclipAnalyzer {
  input {
    String? top_n
  }
  command <<<
    mb-softclip-analyzer \
      ~{if defined(top_n) then ("--top_n " +  '"' + top_n + '"') else ""}
  >>>
  parameter_meta {
    top_n: "number of most commonly clipped sequences printed"
  }
}