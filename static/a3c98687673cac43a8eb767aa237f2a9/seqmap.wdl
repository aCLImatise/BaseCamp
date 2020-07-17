version 1.0

task Seqmap {
  input {
    String number_of_mismatches
    String probe_fast_a_file_name
    String transcript_fast_a_file_name
    String output_file_name
  }
  command <<<
    seqmap \
      ~{number_of_mismatches} \
      ~{probe_fast_a_file_name} \
      ~{transcript_fast_a_file_name} \
      ~{output_file_name}
  >>>
  parameter_meta {
    number_of_mismatches: ""
    probe_fast_a_file_name: ""
    transcript_fast_a_file_name: ""
    output_file_name: ""
  }
}