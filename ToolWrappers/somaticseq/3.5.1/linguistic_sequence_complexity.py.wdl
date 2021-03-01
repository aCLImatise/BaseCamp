version 1.0

task LinguisticSequenceComplexitypy {
  input {
    File? sequence
  }
  command <<<
    linguistic_sequence_complexity_py \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence: "input vcf file (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}