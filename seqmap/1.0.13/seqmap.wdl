version 1.0

task Seqmap {
  input {
    Int number_of_mismatches
    File probe_fast_a_file_name
    File transcript_fast_a_file_name
    File output_file_name
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
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}