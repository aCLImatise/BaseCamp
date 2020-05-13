class: CommandLineTool
id: cdna_classifier.py.cwl
inputs:
- id: input_fast_x
  doc: Input file.
  type: string
  inputBinding:
    position: 0
- id: output_fast_x
  doc: Output file.
  type: string
  inputBinding:
    position: 1
- id: b
  doc: Primers fasta.
  type: string
  inputBinding:
    prefix: -b
- id: g
  doc: File with custom profile HMMs (None).
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: File to specify primer configurations for each direction (None).
  type: string
  inputBinding:
    prefix: -c
- id: q
  doc: Cutoff parameter (autotuned).
  type: string
  inputBinding:
    prefix: -q
- id: q
  doc: Minimum mean base quality (7.0).
  type: long
  inputBinding:
    prefix: -Q
- id: z
  doc: Minimum segment length (50).
  type: long
  inputBinding:
    prefix: -z
- id: r
  doc: Report PDF (cdna_classifier_report.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: u
  doc: Write unclassified reads to this file.
  type: string
  inputBinding:
    prefix: -u
- id: w
  doc: Write rescued reads to this file.
  type: string
  inputBinding:
    prefix: -w
- id: s
  doc: Write statistics to this file.
  type: string
  inputBinding:
    prefix: -S
- id: y
  doc: Approximate number of reads used for tuning the cutoff parameter (10000).
  type: string
  inputBinding:
    prefix: -Y
- id: l
  doc: Number of samples taken when tuning cutoff parameter (30).
  type: string
  inputBinding:
    prefix: -L
- id: a
  doc: Write alignment scores to this BED file.
  type: string
  inputBinding:
    prefix: -A
- id: m
  doc: 'Detection method: phmm or edlib (phmm).'
  type: string
  inputBinding:
    prefix: -m
- id: x
  doc: 'Protocol-specific read rescue: DCS109 (None).'
  type: string
  inputBinding:
    prefix: -x
- id: p
  doc: Keep primers, but trim the rest.
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: Number of threads to use (8).
  type: string
  inputBinding:
    prefix: -t
- id: b
  doc: Maximum number of reads processed in each batch (1000000).
  type: string
  inputBinding:
    prefix: -B
- id: d
  doc: stats        Tab separated file with per-read stats (None).
  type: string
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- cdna_classifier.py
