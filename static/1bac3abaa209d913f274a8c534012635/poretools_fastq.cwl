class: CommandLineTool
id: poretools_fastq.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: type
  doc: Which type of FASTQ entries should be reported? Def.=all
  type: string
  inputBinding:
    prefix: --type
- id: start
  doc: Only report reads from after start timestamp
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: Only report reads from before end timestamp
  type: string
  inputBinding:
    prefix: --end
- id: min_length
  doc: Minimum read length for FASTQ entry to be reported.
  type: long
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: Maximum read length for FASTQ entry to be reported.
  type: long
  inputBinding:
    prefix: --max-length
- id: high_quality
  doc: Only report reads with more complement events than template.
  type: boolean
  inputBinding:
    prefix: --high-quality
- id: normal_quality
  doc: Only report reads with fewer complement events than template.
  type: boolean
  inputBinding:
    prefix: --normal-quality
- id: group
  doc: Base calling group serial number to extract, default 000
  type: string
  inputBinding:
    prefix: --group
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- fastq
