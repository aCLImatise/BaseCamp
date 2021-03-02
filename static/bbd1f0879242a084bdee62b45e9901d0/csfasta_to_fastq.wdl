version 1.0

task CsfastaToFastq {
  input {
    Boolean? cs_fast_a
    Boolean? qual
    Boolean? warning
    Boolean? log
    String cs_fast_a_fast_q
  }
  command <<<
    csfasta_to_fastq \
      ~{cs_fast_a_fast_q} \
      ~{if (cs_fast_a) then "-csfasta" else ""} \
      ~{if (qual) then "-qual" else ""} \
      ~{if (warning) then "-warning" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cs_fast_a: "(string)        input SOLiD csfasta file."
    qual: "(string)        input SOLiD quality file."
    warning: "it reports warnigs to stderr"
    log: "(string)        log file."
    cs_fast_a_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}