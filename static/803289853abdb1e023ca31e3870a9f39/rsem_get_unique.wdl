version 1.0

task Rsemgetunique {
  input {
    String number_of_threads
    String unsorted_transcript_bam_input
    String bam_output
  }
  command <<<
    rsem_get_unique \
      ~{number_of_threads} \
      ~{unsorted_transcript_bam_input} \
      ~{bam_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: ""
    unsorted_transcript_bam_input: ""
    bam_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}