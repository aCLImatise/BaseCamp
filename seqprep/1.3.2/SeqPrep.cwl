class: CommandLineTool
id: SeqPrep.cwl
inputs:
- id: q
  doc: <Quality score cutoff for mismatches to be counted in overlap; default = 13>
  type: boolean
  inputBinding:
    prefix: -q
- id: l
  doc: <Minimum length of a trimmed or merged read to print it; default = 30>
  type: boolean
  inputBinding:
    prefix: -L
- id: a
  doc: <forward read primer/adapter sequence to trim as it would appear at the end
    of a read (recommend about 20bp of this) (should validate by grepping a file);
    default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>
  type: boolean
  inputBinding:
    prefix: -A
- id: b
  doc: <reverse read primer/adapter sequence to trim as it would appear at the end
    of a read (recommend about 20bp of this) (should validate by grepping a file);
    default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>
  type: boolean
  inputBinding:
    prefix: -B
- id: o
  doc: <minimum overall base pair overlap with adapter sequence to trim; default =
    10>
  type: boolean
  inputBinding:
    prefix: -O
- id: m
  doc: <maximum fraction of good quality mismatching bases for primer/adapter overlap;
    default = 0.020000>
  type: boolean
  inputBinding:
    prefix: -M
- id: n
  doc: <minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>
  type: boolean
  inputBinding:
    prefix: -N
- id: b
  doc: <adapter alignment band-width; default = 50>
  type: boolean
  inputBinding:
    prefix: -b
- id: q
  doc: <adapter alignment gap-open; default = 8>
  type: boolean
  inputBinding:
    prefix: -Q
- id: t
  doc: <adapter alignment gap-extension; default = 2>
  type: boolean
  inputBinding:
    prefix: -t
- id: e
  doc: <adapter alignment gap-end; default = 2>
  type: boolean
  inputBinding:
    prefix: -e
- id: z
  doc: <adapter alignment minimum local alignment score cutoff [roughly (2*num_hits)
    - (num_gaps*gap_open) - (num_gaps*gap_close) - (gap_len*gap_extend) - (2*num_mismatches)];
    default = 26>
  type: boolean
  inputBinding:
    prefix: -Z
- id: w
  doc: <read alignment band-width; default = 50>
  type: boolean
  inputBinding:
    prefix: -w
- id: w
  doc: <read alignment gap-open; default = 26>
  type: boolean
  inputBinding:
    prefix: -W
- id: p
  doc: <read alignment gap-extension; default = 9>
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: <read alignment gap-end; default = 5>
  type: boolean
  inputBinding:
    prefix: -P
- id: x
  doc: <read alignment maximum fraction gap cutoff; default = 0.125000>
  type: boolean
  inputBinding:
    prefix: -X
- id: z
  doc: <use mask; N will replace adapters>
  type: boolean
  inputBinding:
    prefix: -z
- id: x
  doc: <max number of pretty alignments to write (if -E provided); default = 10000>
  type: boolean
  inputBinding:
    prefix: -x
- id: o
  doc: <minimum overall base pair overlap to merge two reads; default = 15>
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: <maximum fraction of good quality mismatching bases to overlap reads; default
    = 0.020000>
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: <minimum fraction of matching bases to overlap reads; default = 0.900000>
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- SeqPrep
