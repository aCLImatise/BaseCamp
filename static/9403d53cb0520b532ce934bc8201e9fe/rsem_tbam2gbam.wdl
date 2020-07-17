version 1.0

task RsemTbam2gbam {
  input {
    String? p
    String reference_name
    String unsorted_transcript_bam_input
    String genome_bam_output
  }
  command <<<
    rsem-tbam2gbam \
      ~{reference_name} \
      ~{unsorted_transcript_bam_input} \
      ~{genome_bam_output} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    reference_name: ""
    unsorted_transcript_bam_input: ""
    genome_bam_output: ""
  }
}