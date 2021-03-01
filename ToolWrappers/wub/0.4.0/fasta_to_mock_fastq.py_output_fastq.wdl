version 1.0

task FastaToMockFastqpyOutputFastq {
  input {
    String? q
    String fast_a_to_mock_fast_q_do_tpy
  }
  command <<<
    fasta_to_mock_fastq_py output_fastq \
      ~{fast_a_to_mock_fast_q_do_tpy} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    q: ""
    fast_a_to_mock_fast_q_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}