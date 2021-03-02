version 1.0

task AnalyzeBest {
  input {
    String? c
    String? e
    String? g
  }
  command <<<
    analyzeBest \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c: ""
    e: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}