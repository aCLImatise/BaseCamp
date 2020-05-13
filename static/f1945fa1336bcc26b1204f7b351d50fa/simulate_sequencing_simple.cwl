class: CommandLineTool
id: simulate_sequencing_simple.py.cwl
inputs:
- id: input_fast_a
  doc: 'Input genome in fasta format (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: output_fast_q
  doc: 'Output fastq (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: n
  doc: Number of simulated reads (1).
  type: string
  inputBinding:
    prefix: -n
- id: m
  doc: Mean read length (5000).
  type: string
  inputBinding:
    prefix: -m
- id: a
  doc: 'Read length distribution: gamma shape parameter (1).'
  type: string
  inputBinding:
    prefix: -a
- id: l
  doc: 'Read length distribution: lower truncation point (100).'
  type: string
  inputBinding:
    prefix: -l
- id: u
  doc: 'Read length distribution: upper truncation point (None).'
  type: string
  inputBinding:
    prefix: -u
- id: e
  doc: Total rate of substitutions insertions and deletions (0.1).
  type: string
  inputBinding:
    prefix: -e
- id: w
  doc: Relative frequency of substitutions,insertions,deletions (1,1,4).
  type: string
  inputBinding:
    prefix: -w
- id: b
  doc: 'Strand bias: the ratio of forward and reverse reads (0.5).'
  type: string
  inputBinding:
    prefix: -b
- id: q
  doc: Mock base quality for fastq output (40).
  type: string
  inputBinding:
    prefix: -q
- id: s
  doc: Save true alignments in this SAM file (None).
  type: string
  inputBinding:
    prefix: -s
- id: q
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: z
  doc: Random seed (None).
  type: string
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate_sequencing_simple.py
