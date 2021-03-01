version 1.0

task SplashEvalreadsBam {
  input {
    File? r
    String? b
    File? o
    String splash
    String eval_reads
  }
  command <<<
    splash eval_reads bam \
      ~{splash} \
      ~{eval_reads} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
    b: ""
    o: ""
    splash: ""
    eval_reads: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}