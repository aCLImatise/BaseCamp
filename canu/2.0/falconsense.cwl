class: CommandLineTool
id: falconsense.cwl
inputs:
- id: s
  doc: mandatory path to seqStore
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: mandatory path to corStore
  type: string
  inputBinding:
    prefix: -C
- id: p
  doc: output filename prefix
  type: string
  inputBinding:
    prefix: -p
- id: cns
  doc: enable primary output (to 'prefix.cns')
  type: boolean
  inputBinding:
    prefix: -cns
- id: fast_q
  doc: enable fastq output (to 'prefix.fastq')
  type: boolean
  inputBinding:
    prefix: -fastq
- id: log
  doc: enable (debug) logging output (to 'prefix.log')
  type: boolean
  inputBinding:
    prefix: -log
- id: t
  doc: 'number of compute threads to use (default: all)'
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: align evidence to the full read, ignore overlap position
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: only process reads listed in file 'readsToCorrect'
  type: string
  inputBinding:
    prefix: -R
- id: r
  doc: "[-end]       only process reads from ID 'bgn' to 'end' (inclusive)"
  type: string
  inputBinding:
    prefix: -r
- id: cc
  doc: 'output:   minimum consensus coverage needed call a corrected base'
  type: string
  inputBinding:
    prefix: -cc
- id: cl
  doc: 'output:   minimum length of corrected region to output as a corrected read'
  type: long
  inputBinding:
    prefix: -cl
- id: oi
  doc: 'evidence: minimum identity of an aligned evidence read overlap'
  type: string
  inputBinding:
    prefix: -oi
- id: ol
  doc: 'evidence: minimum length   of an aligned evidence read overlap'
  type: long
  inputBinding:
    prefix: -ol
- id: partition
  doc: m R   configure jobs to fit in M GB memory with not more than R reads per batch,
    allowing m GB memory for processing.  write output to 'prefix.batches'.
  type: string
  inputBinding:
    prefix: -partition
- id: export
  doc: write the data used for the computation to file 'name'
  type: string
  inputBinding:
    prefix: -export
- id: import
  doc: compute using the data in file 'name'
  type: string
  inputBinding:
    prefix: -import
outputs: []
cwlVersion: v1.1
baseCommand:
- falconsense
