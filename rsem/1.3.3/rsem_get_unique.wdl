version 1.0

task RsemGetUnique {
  input {
    String number_of_threads
    String unsorted_transcript_bam_input
    String bam_output
  }
  command <<<
    rsem-get-unique \
      ~{number_of_threads} \
      ~{unsorted_transcript_bam_input} \
      ~{bam_output}
  >>>
  parameter_meta {
    number_of_threads: ""
    unsorted_transcript_bam_input: ""
    bam_output: ""
  }
}