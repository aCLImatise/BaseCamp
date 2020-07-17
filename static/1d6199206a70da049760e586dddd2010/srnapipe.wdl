version 1.0

task Srnapipe {
  input {
    String? fast_q
    String? fast_q_n
  }
  command <<<
    srnapipe \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(fast_q_n) then ("--fastq_n " +  '"' + fast_q_n + '"') else ""}
  >>>
  parameter_meta {
    fast_q: ""
    fast_q_n: ""
  }
}