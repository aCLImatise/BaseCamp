version 1.0

task FastqFilterN {
  input {
    String? n
    String fast_q_one
  }
  command <<<
    fastq_filter_n \
      ~{fast_q_one} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    fast_q_one: ""
  }
}