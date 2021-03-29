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
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    range_file: ""
    nib_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}