class: CommandLineTool
id: genRandomReads.cwl
inputs:
- id: in_transcript_fast_a
  doc: '[--simpleTranscriptId]'
  type: File
  inputBinding:
    prefix: --transcriptFasta
- id: in_expression_levels
  doc: '[other options]'
  type: string
  inputBinding:
    prefix: --expressionLevels
- id: in_summarize_fast_a
  doc: Only output the transcript names and lengths.
  type: boolean
  inputBinding:
    prefix: --summarizeFasta
- id: in_total_reads
  doc: <int>        Total read/pairs in output.
  type: boolean
  inputBinding:
    prefix: --totalReads
- id: in_read_len
  doc: The length of the output reads. 100 by default.
  type: long
  inputBinding:
    prefix: --readLen
- id: in_rand_seed
  doc: "Seed to generate random numbers. UNIXTIME is used\nas the random seed by default."
  type: long
  inputBinding:
    prefix: --randSeed
- id: in_quality_ref_file
  doc: "A textual file containing Phred+33 quanlity strings\nfor simulating sequencing\
    \ errors. The quality\nstrings have to have the same length as the output\nreads.\
    \ No sequencing errors are simulated when this\noption is omitted."
  type: File
  inputBinding:
    prefix: --qualityRefFile
- id: in_floor_strategy
  doc: "How to deal with round-up errors. 'FLOOR': generate\nless than wanted reads;\
    \ 'RANDOM': randomly assign\nmargin reads to transcripts; 'ITERATIVE': find the\n\
    best M value to have ~N reads."
  type: boolean
  inputBinding:
    prefix: --floorStrategy
- id: in_generate_pairedend_reads
  doc: Generate paired-end reads.
  type: boolean
  inputBinding:
    prefix: --pairedEnd
- id: in_insertion_len_sigma
  doc: "Parameters of a truncated normal distribution for\ndeciding insertion lengths\
    \ of paired-end reads.\nDefault values: mean=160, sigma=30, min=110, max=400"
  type: double
  inputBinding:
    prefix: --insertionLenSigma
- id: in_simple_transcript_id
  doc: Truncate transcript names to the first '|' or space.
  type: boolean
  inputBinding:
    prefix: --simpleTranscriptId
- id: in_truth_in_read_names
  doc: Encode the true locations of reads in read names.
  type: boolean
  inputBinding:
    prefix: --truthInReadNames
- id: in_no_actual_reads
  doc: Do not actually generate reads in fastq.gz files.
  type: boolean
  inputBinding:
    prefix: --noActualReads
- id: in_var_13
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_do
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_encode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_16
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_how
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_only
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_22
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_truncate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_best
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_26
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_int
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_less
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_margin
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_strings
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wanted
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_no
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tpm
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_total
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_column
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_generating
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_have
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_length
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_not
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_42
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_scanning
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_simulating
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_textual
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_than
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_49
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_actually
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_deal
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_53
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_read_slash_pairs
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sequencing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_table
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_58
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_true
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_values_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_columns
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a_slash_gz
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_containing
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_delimited
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_errors
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_errors_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_locations
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_random
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_transcript
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_transcripts
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_truncated
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_phred
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 4
- id: in_names
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_normal
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_numbers_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_round_up
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_tab
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_unix_time
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_distribution
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_first
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_reads_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_same
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_simulated
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_one_zero_zero
  doc: ''
  type: long
  inputBinding:
    position: 6
- id: in_fast_q_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_when
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_used
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genRandomReads
