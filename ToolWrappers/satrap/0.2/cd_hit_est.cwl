class: CommandLineTool
id: cd_hit_est.cwl
inputs:
- id: in_input_filename_fasta
  doc: input filename in fasta format, required
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_filename_required
  doc: output filename, required
  type: File
  inputBinding:
    prefix: -o
- id: in_sequence_identity_threshold
  doc: "sequence identity threshold, default 0.9\nthis is the default cd-hit's \"\
    global sequence identity\" calculated as:\nnumber of identical amino acids in\
    \ alignment\ndivided by the full length of the shorter sequence"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_use_global_default
  doc: "use global sequence identity, default 1\nif set to 0, then use local sequence\
    \ identity, calculated as :\nnumber of identical amino acids in alignment\ndivided\
    \ by the length of the alignment\nNOTE!!! don't use -G 0 unless you use alignment\
    \ coverage controls\nsee options -aL, -AL, -aS, -AS"
  type: boolean
  inputBinding:
    prefix: -G
- id: in_bandwidth_alignment_default
  doc: band_width of alignment, default 20
  type: boolean
  inputBinding:
    prefix: -b
- id: in_memory_limit_mb
  doc: memory limit (in MB) for the program, default 800; 0 for unlimitted;
  type: boolean
  inputBinding:
    prefix: -M
- id: in_number_threads_default
  doc: number of threads, default 1; with 0, all CPUs will be used
  type: boolean
  inputBinding:
    prefix: -T
- id: in_wordlength_default_see
  doc: word_length, default 10, see user's guide for choosing it
  type: boolean
  inputBinding:
    prefix: -n
- id: in_length_throwawaysequences_default
  doc: length of throw_away_sequences, default 10
  type: boolean
  inputBinding:
    prefix: -l
- id: in_length_description_set
  doc: "length of description in .clstr file, default 20\nif set to 0, it takes the\
    \ fasta defline and stops at first space"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_length_difference_default
  doc: "length difference cutoff, default 0.0\nif set to 0.9, the shorter sequences\
    \ need to be\nat least 90% length of the representative of the cluster"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_length_difference_cutoff
  doc: "length difference cutoff in amino acid, default 999999\nif set to 60, the\
    \ length difference between the shorter sequences\nand the representative of the\
    \ cluster can not be bigger than 60"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_coverage_longer_set
  doc: "coverage for the longer sequence, default 0.0\nif set to 0.9, the alignment\
    \ must covers 90% of the sequence"
  type: double
  inputBinding:
    prefix: -aL
- id: in_coverage_control_longer
  doc: "coverage control for the longer sequence, default 99999999\nif set to 60,\
    \ and the length of the sequence is 400,\nthen the alignment must be >= 340 (400-60)\
    \ residues"
  type: long
  inputBinding:
    prefix: -AL
- id: in_coverage_shorter_set
  doc: "coverage for the shorter sequence, default 0.0\nif set to 0.9, the alignment\
    \ must covers 90% of the sequence"
  type: double
  inputBinding:
    prefix: -aS
- id: in_coverage_control_set
  doc: "coverage control for the shorter sequence, default 99999999\nif set to 60,\
    \ and the length of the sequence is 400,\nthen the alignment must be >= 340 (400-60)\
    \ residues"
  type: long
  inputBinding:
    prefix: -AS
- id: in_minimal_alignment_coverage
  doc: "minimal alignment coverage control for the both sequences, default 0\nalignment\
    \ must cover >= this value for both sequences"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_ul
  doc: "unmatched percentage for the longer sequence, default 1.0\nif set to 0.1,\
    \ the unmatched region (excluding leading and tailing gaps)\nmust not be more\
    \ than 10% of the sequence"
  type: double
  inputBinding:
    prefix: -uL
- id: in_us
  doc: "unmatched percentage for the shorter sequence, default 1.0\nif set to 0.1,\
    \ the unmatched region (excluding leading and tailing gaps)\nmust not be more\
    \ than 10% of the sequence"
  type: double
  inputBinding:
    prefix: -uS
- id: in_maximum_unmatched_length
  doc: "maximum unmatched length, default 99999999\nif set to 10, the unmatched region\
    \ (excluding leading and tailing gaps)\nmust not be more than 10 bases"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_default_default_sequences
  doc: "1 or 0, default 0, by default, sequences are stored in RAM\nif set to 1, sequence\
    \ are stored on hard drive\nit is recommended to use -B 1 for huge databases"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_default_set_print
  doc: "1 or 0, default 0\nif set to 1, print alignment overlap in .clstr file"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_default_cdhits_default
  doc: "1 or 0, default 0\nby cd-hit's default algorithm, a sequence is clustered\
    \ to the first\ncluster that meet the threshold (fast cluster). If set to 1, the\
    \ program\nwill cluster it into the most similar cluster that meet the threshold\n\
    (accurate but slow mode)\nbut either 1 or 0 won't change the representatives of\
    \ final clusters"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_default_default_do
  doc: "1 or 0, default 1, by default do both +/+ & +/- alignments\nif set to 0, only\
    \ +/+ strand alignment"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_match
  doc: matching score, default 2 (1 for T-U and N-N)
  type: boolean
  inputBinding:
    prefix: -match
- id: in_mismatch
  doc: mismatching score, default -2
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: in_gap
  doc: gap opening score, default -6
  type: boolean
  inputBinding:
    prefix: -gap
- id: in_gap_ext
  doc: gap extension score, default -1
  type: boolean
  inputBinding:
    prefix: -gap-ext
- id: in_this_help
  doc: this help
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_required
  doc: output filename, required
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename_required)
cwlVersion: v1.1
baseCommand:
- cd-hit-est
