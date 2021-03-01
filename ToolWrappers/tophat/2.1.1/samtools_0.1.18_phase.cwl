class: CommandLineTool
id: samtools_0.1.18_phase.cwl
inputs:
- id: in_block_length
  doc: block length [13]
  type: long?
  inputBinding:
    prefix: -k
- id: in_prefix_bams_output
  doc: prefix of BAMs to output [null]
  type: string?
  inputBinding:
    prefix: -b
- id: in_min_het_phredlod
  doc: min het phred-LOD [37]
  type: long?
  inputBinding:
    prefix: -q
- id: in_min_base_quality
  doc: min base quality in het calling [13]
  type: long?
  inputBinding:
    prefix: -Q
- id: in_max_read_depth
  doc: max read depth [256]
  type: long?
  inputBinding:
    prefix: -D
- id: in_attempt_fix_chimeras
  doc: do not attempt to fix chimeras
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_drop_reads_ambiguous
  doc: drop reads with ambiguous phase
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_phase
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- phase
