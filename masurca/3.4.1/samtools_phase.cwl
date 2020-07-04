class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtools_phase.cwl
inputs:
- id: block_length
  doc: block length [13]
  type: long
  inputBinding:
    prefix: -k
- id: prefix_bams_output
  doc: prefix of BAMs to output [null]
  type: string
  inputBinding:
    prefix: -b
- id: min_het_phredlod
  doc: min het phred-LOD [37]
  type: long
  inputBinding:
    prefix: -q
- id: min_base_quality
  doc: min base quality in het calling [13]
  type: long
  inputBinding:
    prefix: -Q
- id: max_read_depth
  doc: max read depth [256]
  type: long
  inputBinding:
    prefix: -D
- id: attempt_fix_chimeras
  doc: do not attempt to fix chimeras
  type: boolean
  inputBinding:
    prefix: -F
- id: drop_reads_ambiguous
  doc: drop reads with ambiguous phase
  type: boolean
  inputBinding:
    prefix: -A
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- phase
