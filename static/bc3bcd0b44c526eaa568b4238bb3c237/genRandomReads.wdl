version 1.0

task GenRandomReads {
  input {
    File? transcript_fast_a
    String? expression_levels
    Boolean? summarize_fast_a
    Boolean? total_reads
    Int? read_len
    Int? rand_seed
    File? quality_ref_file
    Boolean? floor_strategy
    Boolean? paired_end
    Float? insertion_len_sigma
    Boolean? simple_transcript_id
    Boolean? truth_in_read_names
    Boolean? no_actual_reads
    String for
    String scanning
    String a
    String fast_a_slash_gz
    File file
  }
  command <<<
    genRandomReads \
      ~{for} \
      ~{scanning} \
      ~{a} \
      ~{fast_a_slash_gz} \
      ~{file} \
      ~{if defined(transcript_fast_a) then ("--transcriptFasta " +  '"' + transcript_fast_a + '"') else ""} \
      ~{if defined(expression_levels) then ("--expressionLevels " +  '"' + expression_levels + '"') else ""} \
      ~{true="--summarizeFasta" false="" summarize_fast_a} \
      ~{true="--totalReads" false="" total_reads} \
      ~{if defined(read_len) then ("--readLen " +  '"' + read_len + '"') else ""} \
      ~{if defined(rand_seed) then ("--randSeed " +  '"' + rand_seed + '"') else ""} \
      ~{if defined(quality_ref_file) then ("--qualityRefFile " +  '"' + quality_ref_file + '"') else ""} \
      ~{true="--floorStrategy" false="" floor_strategy} \
      ~{true="--pairedEnd" false="" paired_end} \
      ~{if defined(insertion_len_sigma) then ("--insertionLenSigma " +  '"' + insertion_len_sigma + '"') else ""} \
      ~{true="--simpleTranscriptId" false="" simple_transcript_id} \
      ~{true="--truthInReadNames" false="" truth_in_read_names} \
      ~{true="--noActualReads" false="" no_actual_reads}
  >>>
  parameter_meta {
    transcript_fast_a: "[--simpleTranscriptId]"
    expression_levels: "[other options]"
    summarize_fast_a: "Only output the transcript names and lengths."
    total_reads: "<int>        Total read/pairs in output."
    read_len: "The length of the output reads. 100 by default."
    rand_seed: "Seed to generate random numbers. UNIXTIME is used as the random seed by default."
    quality_ref_file: "A textual file containing Phred+33 quanlity strings for simulating sequencing errors. The quality strings have to have the same length as the output reads. No sequencing errors are simulated when this option is omitted."
    floor_strategy: "How to deal with round-up errors. 'FLOOR': generate less than wanted reads; 'RANDOM': randomly assign margin reads to transcripts; 'ITERATIVE': find the best M value to have ~N reads."
    paired_end: "Generate paired-end reads."
    insertion_len_sigma: "Parameters of a truncated normal distribution for deciding insertion lengths of paired-end reads. Default values: mean=160, sigma=30, min=110, max=400"
    simple_transcript_id: "Truncate transcript names to the first '|' or space."
    truth_in_read_names: "Encode the true locations of reads in read names."
    no_actual_reads: "Do not actually generate reads in fastq.gz files."
    for: ""
    scanning: ""
    a: ""
    fast_a_slash_gz: ""
    file: ""
  }
}