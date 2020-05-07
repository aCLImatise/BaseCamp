class: CommandLineTool
id: sublong.cwl
inputs:
- id: i
  doc: Base name of the index. The index must be built as a full index and has only
    one block.
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: Name of an input read file. Acceptable formats include gzipped FASTQ and FASTQ
    (automatically identified).
  type: string
  inputBinding:
    prefix: -r
- id: o
  doc: Name of an output file in BAM format.
  type: string
  inputBinding:
    prefix: -o
- id: sam_output
  doc: Save mapping results in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMoutput
- id: t
  doc: Number of CPU threads used. 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: v
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: x
  doc: Turn on the RNA-seq mode.
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- sublong
