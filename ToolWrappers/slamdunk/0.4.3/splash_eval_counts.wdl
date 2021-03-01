version 1.0

task SplashEvalcounts {
  input {
    File? o
    String? d
    String? s
  }
  command <<<
    splash eval_counts \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    d: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}