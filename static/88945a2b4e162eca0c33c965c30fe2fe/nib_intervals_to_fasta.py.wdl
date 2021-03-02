version 1.0

task NibIntervalsToFastapy {
  input {
    String range_file
    String nib_file
  }
  command <<<
    nib_intervals_to_fasta_py \
      ~{range_file} \
      ~{nib_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    range_file: ""
    nib_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}