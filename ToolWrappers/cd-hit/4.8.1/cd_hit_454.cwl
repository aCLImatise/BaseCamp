class: CommandLineTool
id: cd_hit_454.cwl
inputs:
- id: in_input_filename_fasta
  doc: input filename in fasta format, required, can be in .gz format
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_filename_required
  doc: output filename, required
  type: File?
  inputBinding:
    prefix: -o
- id: in_sequence_identity_threshold
  doc: "sequence identity threshold, default 0.98\nthis is a \"global sequence identity\"\
    \ calculated as :\nnumber of identical amino acids or bases in alignment\ndivided\
    \ by the full length of the shorter sequence + gaps"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_bandwidth_alignment_default
  doc: band_width of alignment, default 10
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_memory_limit_mb
  doc: memory limit (in MB) for the program, default 800; 0 for unlimitted;
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_number_threads_default
  doc: number of threads, default 1; with 0, all CPUs will be used
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_wordlength_default_see
  doc: word_length, default 10, see user's guide for choosing it
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_alignment_coverage_longer
  doc: "alignment coverage for the longer sequence, default 0.0\nif set to 0.9, the\
    \ alignment must covers 90% of the sequence"
  type: boolean?
  inputBinding:
    prefix: -aL
- id: in_var_8
  doc: "alignment coverage control for the longer sequence, default 99999999\nif set\
    \ to 60, and the length of the sequence is 400,\nthen the alignment must be >=\
    \ 340 (400-60) residues"
  type: boolean?
  inputBinding:
    prefix: -AL
- id: in_alignment_coverage_shorter
  doc: "alignment coverage for the shorter sequence, default 0.0\nif set to 0.9, the\
    \ alignment must covers 90% of the sequence"
  type: boolean?
  inputBinding:
    prefix: -aS
- id: in_var_10
  doc: "alignment coverage control for the shorter sequence, default 99999999\nif\
    \ set to 60, and the length of the sequence is 400,\nthen the alignment must be\
    \ >= 340 (400-60) residues"
  type: boolean?
  inputBinding:
    prefix: -AS
- id: in_default_default_sequences
  doc: "1 or 0, default 0, by default, sequences are stored in RAM\nif set to 1, sequence\
    \ are stored on hard drive\n!! No longer supported !!"
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_default_cdhits_default
  doc: "1 or 0, default 0\nby cd-hit's default algorithm, a sequence is clustered\
    \ to the first\ncluster that meet the threshold (fast cluster). If set to 1, the\
    \ program\nwill cluster it into the most similar cluster that meet the threshold\n\
    (accurate but slow mode)\nbut either 1 or 0 won't change the representatives of\
    \ final clusters"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_max_size_indel
  doc: max size per indel, default 1
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_match
  doc: matching score, default 2
  type: boolean?
  inputBinding:
    prefix: -match
- id: in_mismatch
  doc: mismatching score, default -1
  type: boolean?
  inputBinding:
    prefix: -mismatch
- id: in_gap
  doc: opening score, default -3
  type: long?
  inputBinding:
    prefix: -gap
- id: in_gap_ext
  doc: gap extension score, default -1
  type: boolean?
  inputBinding:
    prefix: -gap-ext
- id: in_bak
  doc: backup cluster file (1 or 0, default 0)
  type: File?
  inputBinding:
    prefix: -bak
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_required
  doc: output filename, required
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_required)
hints: []
cwlVersion: v1.1
baseCommand:
- cd-hit-454
