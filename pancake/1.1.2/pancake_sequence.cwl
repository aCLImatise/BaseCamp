class: CommandLineTool
id: ../../../pancake_sequence.cwl
inputs:
- id: pan_file
  doc: Name of PanCake Data Object File (required)
  type: string
  inputBinding:
    prefix: --panfile
- id: chrom
  doc: Chromosome from which sequence originates
  type: string
  inputBinding:
    prefix: --chrom
- id: genome
  doc: (multiple) .fasta output of GENOME (if set, start and stop will be ignored)
  type: string
  inputBinding:
    prefix: --genome
- id: output
  doc: file to which .fasta output will be written (DEFAULT = STDOUT)
  type: string
  inputBinding:
    prefix: --output
- id: linewidth
  doc: line witdth in .fastafile (DEFAULT=100)
  type: long
  inputBinding:
    prefix: --linewidth
- id: start
  doc: (1-based) start position on CHROMOSME (DEFAULT = 1)
  type: long
  inputBinding:
    prefix: -start
- id: stop
  doc: (1-based) stop position on CHROMOSME (DEFAULT = length of CHROMOSME)
  type: long
  inputBinding:
    prefix: -stop
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- sequence
