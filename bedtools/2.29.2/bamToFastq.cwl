#!/usr/bin/env cwl-runner

baseCommand:
- bamToFastq
class: CommandLineTool
cwlVersion: v1.0
id: bamtofastq
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: FASTQ for second end.  Used if BAM contains paired-end data. BAM should be
    sorted by query name is creating paired FASTQ.
  id: fq2
  inputBinding:
    prefix: -fq2
  type: boolean
- doc: Create FASTQ based on the mate info in the BAM R2 and Q2 tags.
  id: tags
  inputBinding:
    prefix: -tags
  type: boolean
