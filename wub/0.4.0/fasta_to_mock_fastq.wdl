version 1.0

task FastaToMockFastq.pyOutputFastq {
  input {
    String? q
    String fast_a_to_mock_fast_q_do_tpy
  }
  command <<<
    fasta_to_mock_fastq.py output_fastq \
      ~{fast_a_to_mock_fast_q_do_tpy} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    fast_a_to_mock_fast_q_do_tpy: ""
  }
}