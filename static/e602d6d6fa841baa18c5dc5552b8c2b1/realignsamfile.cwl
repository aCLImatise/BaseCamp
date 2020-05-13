class: CommandLineTool
id: realignsamfile.cwl
inputs:
- id: elongation
  doc: the elongation factor [INT]
  type: string
  inputBinding:
    prefix: --elongation
- id: filter_circular_reads
  doc: filter the reads that don't map to a circular identifier (true/false), default
    false
  type: string
  inputBinding:
    prefix: --filterCircularReads
- id: input
  doc: the input SAM/BAM File
  type: string
  inputBinding:
    prefix: --input
- id: reference
  doc: the unmodified reference genome
  type: string
  inputBinding:
    prefix: --reference
- id: filter_non_circular_sequences
  doc: filter the sequence identifiers that are not circular identifiers (true/false),
    default false
  type: string
  inputBinding:
    prefix: --filterNonCircularSequences
outputs: []
cwlVersion: v1.1
baseCommand:
- realignsamfile
