version 1.0

task LinguisticSequenceComplexitypy {
  input {
    String? sequence
    Int? substring_length
  }
  command <<<
    linguistic_sequence_complexity_py \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(substring_length) then ("--substring-length " +  '"' + substring_length + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  parameter_meta {
    sequence: "GCTA sequences (default: None)"
    substring_length: "sub-lenght up to... (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}