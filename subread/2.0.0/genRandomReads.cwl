class: CommandLineTool
id: genRandomReads.cwl
inputs:
- id: transcript_fast_a
  doc: '[--simpleTranscriptId]'
  type: File
  inputBinding:
    prefix: --transcriptFasta
- id: expression_levels
  doc: '[other options]'
  type: string
  inputBinding:
    prefix: --expressionLevels
- id: summarize_fast_a
  doc: Only output the transcript names and lengths.
  type: boolean
  inputBinding:
    prefix: --summarizeFasta
- id: transcript_fast_a
  doc: The transcript database in FASTA/gz format.
  type: File
  inputBinding:
    prefix: --transcriptFasta
- id: output_prefix
  doc: The prefix of the output files.
  type: string
  inputBinding:
    prefix: --outputPrefix
- id: total_reads
  doc: <int>        Total read/pairs in output.
  type: boolean
  inputBinding:
    prefix: --totalReads
- id: expression_levels
  doc: 'Two column table delimited by <TAB>, giving the wanted TPM values. Columns:
    TranscriptID and TPM'
  type: File
  inputBinding:
    prefix: --expressionLevels
- id: read_len
  doc: The length of the output reads. 100 by default.
  type: long
  inputBinding:
    prefix: --readLen
- id: total_reads
  doc: Total read/pairs in the output.
  type: long
  inputBinding:
    prefix: --totalReads
- id: rand_seed
  doc: Seed to generate random numbers. UNIXTIME is used as the random seed by default.
  type: long
  inputBinding:
    prefix: --randSeed
- id: quality_ref_file
  doc: A textual file containing Phred+33 quanlity strings for simulating sequencing
    errors. The quality strings have to have the same length as the output reads.
    No sequencing errors are simulated when this option is omitted.
  type: File
  inputBinding:
    prefix: --qualityRefFile
- id: floor_strategy
  doc: "How to deal with round-up errors. 'FLOOR': generate less than wanted reads;\
    \ 'RANDOM': randomly assign margin reads to transcripts; 'ITERATIVE': find the\
    \ best M value to have ~N reads."
  type: boolean
  inputBinding:
    prefix: --floorStrategy
- id: paired_end
  doc: Generate paired-end reads.
  type: boolean
  inputBinding:
    prefix: --pairedEnd
- id: insertion_len_sigma
  doc: 'Parameters of a truncated normal distribution for deciding insertion lengths
    of paired-end reads. Default values: mean=160, sigma=30, min=110, max=400'
  type: double
  inputBinding:
    prefix: --insertionLenSigma
- id: simple_transcript_id
  doc: Truncate transcript names to the first '|' or space.
  type: boolean
  inputBinding:
    prefix: --simpleTranscriptId
- id: truth_in_read_names
  doc: Encode the true locations of reads in read names.
  type: boolean
  inputBinding:
    prefix: --truthInReadNames
- id: no_actual_reads
  doc: Do not actually generate reads in fastq.gz files.
  type: boolean
  inputBinding:
    prefix: --noActualReads
outputs: []
cwlVersion: v1.1
baseCommand:
- genRandomReads
