class: CommandLineTool
id: ivar_removereads.cwl
inputs:
- id: i
  doc: (Required) Input BAM file  trimmed with ‘ivar trim’. Must be sorted which can
    be done using `samtools sort`.
  type: boolean
  inputBinding:
    prefix: -i
- id: t
  doc: (Required) Text file with primer indices separated by spaces. This is the output
    of `getmasked` command.
  type: boolean
  inputBinding:
    prefix: -t
- id: b
  doc: (Required) BED file with primer sequences and positions.
  type: boolean
  inputBinding:
    prefix: -b
- id: p
  doc: (Required) Prefix for the output filtered BAM file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- removereads
