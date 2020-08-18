class: CommandLineTool
id: ../../../nanoQC.cwl
inputs:
- id: outdir
  doc: Specify directory in which output has to be created.
  type: string
  inputBinding:
    prefix: --outdir
- id: rna
  doc: Fastq is from direct RNA-seq and contains U nucleotides.
  type: boolean
  inputBinding:
    prefix: --rna
- id: min_len
  doc: Filters the reads on a minimal length of the given range. Also plots the given
    length/2 of the begin and end of the reads.
  type: long
  inputBinding:
    prefix: --minlen
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: fast_q
  doc: Reads data in fastq.gz format.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoQC
