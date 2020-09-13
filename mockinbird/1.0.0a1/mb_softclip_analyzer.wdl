version 1.0

task Mbsoftclipanalyzer {
  input {
    Int? top_n
  }
  command <<<
    mb_softclip_analyzer \
      ~{if defined(top_n) then ("--top_n " +  '"' + top_n + '"') else ""}
  >>>
  parameter_meta {
    top_n: "number of most commonly clipped sequences printed"
  }
  output {
    File out_stdout = stdout()
  }
}