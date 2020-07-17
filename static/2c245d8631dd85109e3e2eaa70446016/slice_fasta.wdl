version 1.0

task SliceFasta {
  input {
    String fast_a_file
    String sequence_name
    String start
    String end
    String strand
  }
  command <<<
    slice_fasta \
      ~{fast_a_file} \
      ~{sequence_name} \
      ~{start} \
      ~{end} \
      ~{strand}
  >>>
  parameter_meta {
    fast_a_file: ""
    sequence_name: ""
    start: ""
    end: ""
    strand: ""
  }
}