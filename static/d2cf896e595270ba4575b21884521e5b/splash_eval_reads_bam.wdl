version 1.0

task SplashEvalReadsBam {
  input {
    String? o
    String? b
    String? r
    String splash
    String eval_reads
  }
  command <<<
    splash eval-reads bam \
      ~{splash} \
      ~{eval_reads} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    b: ""
    r: ""
    splash: ""
    eval_reads: ""
  }
}