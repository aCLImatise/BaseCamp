version 1.0

task FastaToMockFastqpy {
  input {
    Int? mock_quality_value
  }
  command <<<
    fasta_to_mock_fastq_py \
      ~{if defined(mock_quality_value) then ("-q " +  '"' + mock_quality_value + '"') else ""}
  >>>
  parameter_meta {
    mock_quality_value: "Mock quality value (40)."
  }
  output {
    File out_stdout = stdout()
  }
}