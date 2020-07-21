class: CommandLineTool
id: ../../../qfilt.cwl
inputs:
- id: qual_fasta_files
  doc: QUAL            FASTA and QUAL files
  type: string
  inputBinding:
    prefix: -F
- id: fastq_file
  doc: FASTQ file
  type: string
  inputBinding:
    prefix: -Q
- id: direct_retained_fragments
  doc: direct retained fragments to a file named OUTPUT (default=stdout)
  type: string
  inputBinding:
    prefix: -o
- id: minimum_perbase_quality
  doc: minimum per-base quality score below which a read will be split or truncated
    (default=20)
  type: string
  inputBinding:
    prefix: -q
- id: minimum_retained_fragment
  doc: minimum retained fragment LENGTH (default=50)
  type: long
  inputBinding:
    prefix: -l
- id: mode_bitmask_integer
  doc: 'MODE is a 3-bitmask (an integer in [0-7], default=0): if the lowest bit is
    set, it is like passing -s; if the middle bit is set, it is like passing -p; and
    if the highest bit is set, it is like passing -a'
  type: string
  inputBinding:
    prefix: -m
- id: when_encountering_split
  doc: when encountering a low q-score, split instead of truncate
  type: boolean
  inputBinding:
    prefix: -s
- id: tolerate_low_regions
  doc: tolerate low q-score homopolymeric regions
  type: boolean
  inputBinding:
    prefix: -p
- id: tolerate_low_nucleotides
  doc: tolerate low q-score ambiguous nucleotides
  type: boolean
  inputBinding:
    prefix: -a
- id: rather_splitting_truncating_bases
  doc: rather than splitting or truncating, replace low quality bases with CHAR this
    option OVERRIDES all -m mode options
  type: string
  inputBinding:
    prefix: -P
- id: rather_splitting_truncating_remove
  doc: rather than splitting or truncating, remove reads which  contain more than
    COUNT low quality bases this option only works in COMBINATION with the -P (punch)
    option
  type: string
  inputBinding:
    prefix: -R
- id: supplied_only_reads
  doc: if supplied, only reads with this PREFIX are retained, and the PREFIX is stripped
    from each contributing read
  type: string
  inputBinding:
    prefix: -T
- id: prefix_supplied_tolerates
  doc: if PREFIX is supplied, prefix matching tolerates at most MISMATCH mismatches
    (default=0)
  type: string
  inputBinding:
    prefix: -t
- id: output_fasta_format
  doc: output in FASTA or FASTQ format (default=FASTA)
  type: string
  inputBinding:
    prefix: -f
- id: output_run_diagnostics
  doc: output run diagnostics to stderr as JSON (default is to write ASCII text)
  type: boolean
  inputBinding:
    prefix: -j
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- qfilt
