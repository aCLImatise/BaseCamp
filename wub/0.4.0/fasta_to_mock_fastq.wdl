version 1.0

task FastaToMockFastq.py {
  input {
    String qQ
    String? inputInputFastA
    String? outputOutputFastQ
  }
  command <<<
    fasta_to_mock_fastq.py \
      ~{inputInputFastA} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{outputOutputFastQ}
  >>>
}