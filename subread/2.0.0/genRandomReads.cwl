#!/usr/bin/env cwl-runner

baseCommand:
- genRandomReads
class: CommandLineTool
cwlVersion: v1.0
id: genrandomreads
inputs:
- doc: '[--simpleTranscriptId]'
  id: transcript_fast_a
  inputBinding:
    prefix: --transcriptFasta
  type: File
- doc: '[other options]'
  id: expression_levels
  inputBinding:
    prefix: --expressionLevels
  type: string
- doc: Only output the transcript names and lengths.
  id: summarize_fast_a
  inputBinding:
    prefix: --summarizeFasta
  type: boolean
- doc: The transcript database in FASTA/gz format.
  id: transcript_fast_a
  inputBinding:
    prefix: --transcriptFasta
  type: File
- doc: The prefix of the output files.
  id: output_prefix
  inputBinding:
    prefix: --outputPrefix
  type: string
- doc: <int>        Total read/pairs in output.
  id: total_reads
  inputBinding:
    prefix: --totalReads
  type: boolean
- doc: 'Two column table delimited by <TAB>, giving the wanted TPM values. Columns:
    TranscriptID and TPM'
  id: expression_levels
  inputBinding:
    prefix: --expressionLevels
  type: File
- doc: The length of the output reads. 100 by default.
  id: read_len
  inputBinding:
    prefix: --readLen
  type: long
- doc: Total read/pairs in the output.
  id: total_reads
  inputBinding:
    prefix: --totalReads
  type: long
- doc: Seed to generate random numbers. UNIXTIME is used as the random seed by default.
  id: rand_seed
  inputBinding:
    prefix: --randSeed
  type: long
- doc: A textual file containing Phred+33 quanlity strings for simulating sequencing
    errors. The quality strings have to have the same length as the output reads.
    No sequencing errors are simulated when this option is omitted.
  id: quality_ref_file
  inputBinding:
    prefix: --qualityRefFile
  type: File
- doc: "How to deal with round-up errors. 'FLOOR': generate less than wanted reads;\
    \ 'RANDOM': randomly assign margin reads to transcripts; 'ITERATIVE': find the\
    \ best M value to have ~N reads."
  id: floor_strategy
  inputBinding:
    prefix: --floorStrategy
  type: boolean
- doc: Generate paired-end reads.
  id: paired_end
  inputBinding:
    prefix: --pairedEnd
  type: boolean
- doc: 'Parameters of a truncated normal distribution for deciding insertion lengths
    of paired-end reads. Default values: mean=160, sigma=30, min=110, max=400'
  id: insertion_len_sigma
  inputBinding:
    prefix: --insertionLenSigma
  type: double
- doc: Truncate transcript names to the first '|' or space.
  id: simple_transcript_id
  inputBinding:
    prefix: --simpleTranscriptId
  type: boolean
- doc: Encode the true locations of reads in read names.
  id: truth_in_read_names
  inputBinding:
    prefix: --truthInReadNames
  type: boolean
- doc: Do not actually generate reads in fastq.gz files.
  id: no_actual_reads
  inputBinding:
    prefix: --noActualReads
  type: boolean
