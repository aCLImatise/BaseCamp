version 1.0

task SplitSequenceDatapy {
  input {
    Int? n
    String? i
  }
  command <<<
    split_sequence_data_py \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}