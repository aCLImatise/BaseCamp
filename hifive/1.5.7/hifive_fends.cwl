class: CommandLineTool
id: hifive_fends.cwl
inputs:
- id: output
  doc: The name of the file to write HiFive Fends to.
  type: string
  inputBinding:
    position: 0
- id: fend
  doc: Fend file in HiCPipe-compatible tabular format, optionally containing fend
    characteristics (GC content and/or mappability).
  type: string
  inputBinding:
    prefix: --fend
- id: bed
  doc: Bed file containing either RE fragment boundary data or RE cutsites.
  type: string
  inputBinding:
    prefix: --bed
- id: length
  doc: Text file containing chromosome names and lengths.
  type: long
  inputBinding:
    prefix: --length
- id: binned
  doc: Interval to bin data into.
  type: string
  inputBinding:
    prefix: --binned
- id: re
  doc: The name of the restriction enzyme used to produce the RE fragments.
  type: string
  inputBinding:
    prefix: --re
- id: genome
  doc: The name of the genome RE fragments correspond to.
  type: string
  inputBinding:
    prefix: --genome
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- fends
