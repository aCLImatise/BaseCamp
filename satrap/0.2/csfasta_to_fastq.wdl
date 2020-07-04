version 1.0

task CsfastaToFastq {
  input {
    String? cs_fast_a
    String? qual
    String cs_fast_a_fast_q
  }
  command <<<
    csfasta_to_fastq \
      ~{cs_fast_a_fast_q} \
      ~{if defined(cs_fast_a) then ("-csfasta " +  '"' + cs_fast_a + '"') else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""}
  >>>
  parameter_meta {
    cs_fast_a: ""
    qual: ""
    cs_fast_a_fast_q: ""
  }
}