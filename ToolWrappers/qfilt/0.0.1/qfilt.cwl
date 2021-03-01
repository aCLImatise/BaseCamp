class: CommandLineTool
id: qfilt.cwl
inputs:
- id: in_qual_fasta_qual
  doc: QUAL            FASTA and QUAL files
  type: string?
  inputBinding:
    prefix: -F
- id: in_fastq_file
  doc: FASTQ file
  type: File?
  inputBinding:
    prefix: -Q
- id: in_direct_retained_fragments
  doc: direct retained fragments to a file named OUTPUT (default=stdout)
  type: File?
  inputBinding:
    prefix: -o
- id: in_minimum_perbase_quality
  doc: "minimum per-base quality score below which a read will be split\nor truncated\
    \ (default=20)"
  type: long?
  inputBinding:
    prefix: -q
- id: in_minimum_retained_fragment
  doc: minimum retained fragment LENGTH (default=50)
  type: long?
  inputBinding:
    prefix: -l
- id: in_mode_bitmask_integer
  doc: "MODE is a 3-bitmask (an integer in [0-7], default=0):\nif the lowest bit is\
    \ set, it is like passing -s;\nif the middle bit is set, it is like passing -p;\n\
    and if the highest bit is set, it is like passing -a"
  type: long?
  inputBinding:
    prefix: -m
- id: in_when_encountering_split
  doc: when encountering a low q-score, split instead of truncate
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_tolerate_low_qscore
  doc: tolerate low q-score homopolymeric regions
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_tolerate_low_nucleotides
  doc: tolerate low q-score ambiguous nucleotides
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_rather_splitting_truncating_replace
  doc: "rather than splitting or truncating, replace low quality bases with CHAR\n\
    this option OVERRIDES all -m mode options"
  type: string?
  inputBinding:
    prefix: -P
- id: in_rather_splitting_truncating_remove
  doc: "rather than splitting or truncating, remove reads which\ncontain more than\
    \ COUNT low quality bases\nthis option only works in COMBINATION with the -P (punch)\
    \ option"
  type: string?
  inputBinding:
    prefix: -R
- id: in_supplied_only_reads
  doc: "if supplied, only reads with this PREFIX are retained,\nand the PREFIX is\
    \ stripped from each contributing read"
  type: string?
  inputBinding:
    prefix: -T
- id: in_prefix_supplied_tolerates
  doc: "if PREFIX is supplied, prefix matching tolerates at most\nMISMATCH mismatches\
    \ (default=0)"
  type: long?
  inputBinding:
    prefix: -t
- id: in_output_fasta_fastq
  doc: output in FASTA or FASTQ format (default=FASTA)
  type: string?
  inputBinding:
    prefix: -f
- id: in_output_run_diagnostics
  doc: output run diagnostics to stderr as JSON (default is to write ASCII text)
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_retained_fragments
  doc: direct retained fragments to a file named OUTPUT (default=stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_direct_retained_fragments)
hints: []
cwlVersion: v1.1
baseCommand:
- qfilt
