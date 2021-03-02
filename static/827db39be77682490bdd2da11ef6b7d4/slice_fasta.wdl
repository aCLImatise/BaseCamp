version 1.0

task SliceFasta {
  input {
    File fast_a_file
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
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    fast_a_file: ""
    sequence_name: ""
    start: ""
    end: ""
    strand: ""
  }
  output {
    File out_stdout = stdout()
  }
}