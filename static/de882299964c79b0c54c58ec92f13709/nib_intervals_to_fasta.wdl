version 1.0

task NibIntervalsToFasta.py {
  input {
    String range_file
    String nib_file
  }
  command <<<
    nib_intervals_to_fasta.py \
      ~{range_file} \
      ~{nib_file}
  >>>
  parameter_meta {
    range_file: ""
    nib_file: ""
  }
}