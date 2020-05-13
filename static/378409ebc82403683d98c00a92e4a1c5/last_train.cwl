class: CommandLineTool
id: last_train.cwl
inputs:
- id: rev_sym
  doc: force reverse-complement symmetry
  type: boolean
  inputBinding:
    prefix: --revsym
- id: mat_sym
  doc: force symmetric substitution matrix
  type: boolean
  inputBinding:
    prefix: --matsym
- id: gap_sym
  doc: force insertion/deletion symmetry
  type: boolean
  inputBinding:
    prefix: --gapsym
- id: pid
  doc: 'skip alignments with > PID% identity (default: 100)'
  type: string
  inputBinding:
    prefix: --pid
- id: post_mask
  doc: skip mostly-lowercase alignments (default=1)
  type: string
  inputBinding:
    prefix: --postmask
- id: sample_number
  doc: 'number of random sequence samples (default: 500)'
  type: string
  inputBinding:
    prefix: --sample-number
- id: sample_length
  doc: 'length of each sample (default: 2000)'
  type: string
  inputBinding:
    prefix: --sample-length
- id: r
  doc: 'match score (default: 6 if Q>0, else 5)'
  type: string
  inputBinding:
    prefix: -r
- id: q
  doc: 'mismatch cost (default: 18 if Q>0, else 5)'
  type: string
  inputBinding:
    prefix: -q
- id: p
  doc: match/mismatch score matrix
  type: string
  inputBinding:
    prefix: -p
- id: a
  doc: 'gap existence cost (default: 21 if Q>0, else 15)'
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: 'gap extension cost (default: 9 if Q>0, else 3)'
  type: string
  inputBinding:
    prefix: -b
- id: a
  doc: insertion existence cost
  type: string
  inputBinding:
    prefix: -A
- id: b
  doc: insertion extension cost
  type: string
  inputBinding:
    prefix: -B
- id: d
  doc: 'query letters per random alignment (default: 1e6)'
  type: long
  inputBinding:
    prefix: -D
- id: e
  doc: maximum expected alignments per square giga
  type: string
  inputBinding:
    prefix: -E
- id: s
  doc: '0=reverse, 1=forward, 2=both (default: 2 if DNA, else 1)'
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: 'score matrix applies to forward strand of: 0=reference, 1=query (default:
    1)'
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: omit gapless alignments in COUNT others with > score- per-length
  type: string
  inputBinding:
    prefix: -C
- id: t
  doc: 'type of alignment: 0=local, 1=overlap (default: 0)'
  type: string
  inputBinding:
    prefix: -T
- id: m
  doc: 'maximum initial matches per query position (default: 10)'
  type: string
  inputBinding:
    prefix: -m
- id: k
  doc: 'use initial matches starting at every STEP-th position in each query (default:
    1)'
  type: string
  inputBinding:
    prefix: -k
- id: p
  doc: number of parallel threads
  type: string
  inputBinding:
    prefix: -P
- id: x
  doc: 'N/X is ambiguous in: 0=neither sequence, 1=reference, 2=query, 3=both (default=0)'
  type: string
  inputBinding:
    prefix: -X
- id: q
  doc: 'input format: 0=fasta or fastq-ignore, 1=fastq-sanger (default=fasta)'
  type: string
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- last-train
