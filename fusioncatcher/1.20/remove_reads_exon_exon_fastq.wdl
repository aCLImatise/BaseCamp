version 1.0

task RemoveReadsExonExonFastq.py {
  input {
    String? input_fast_q
    String? input_fusions
    String? input_transcriptome
    String? output_fast_q
    String? log
  }
  command <<<
    remove_reads_exon_exon_fastq.py \
      ~{if defined(input_fast_q) then ("--input_fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(input_fusions) then ("--input_fusions " +  '"' + input_fusions + '"') else ""} \
      ~{if defined(input_transcriptome) then ("--input_transcriptome " +  '"' + input_transcriptome + '"') else ""} \
      ~{if defined(output_fast_q) then ("--output_fastq " +  '"' + output_fast_q + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    input_fast_q: "The input FASTQ file containing the reads."
    input_fusions: "The input file containing the list of candidate fusion genes."
    input_transcriptome: "The input MAP file containing the reads mapping on transcriptome."
    output_fast_q: "The output FASTQ file containing all reads which have their mate mapping on the candidate fusion genes."
    log: "The output log file."
  }
}