version 1.0

task FastaToMockFastqpyInputFasta {
  input {
    String? q
    String fast_a_to_mock_fast_q_do_tpy
  }
  command <<<
    fasta_to_mock_fastq_py input_fasta \
      ~{fast_a_to_mock_fast_q_do_tpy} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    fast_a_to_mock_fast_q_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}