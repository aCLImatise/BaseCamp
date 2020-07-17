class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ivar_removereads.cwl
inputs:
- id: required_input_bam
  doc: (Required) Input BAM file  trimmed with ‘ivar trim’. Must be sorted which can
    be done using `samtools sort`.
  type: boolean
  inputBinding:
    prefix: -i
- id: required_text_file
  doc: (Required) Text file with primer indices separated by spaces. This is the output
    of `getmasked` command.
  type: boolean
  inputBinding:
    prefix: -t
- id: required_bed_file
  doc: (Required) BED file with primer sequences and positions.
  type: boolean
  inputBinding:
    prefix: -b
- id: required_prefix_output
  doc: (Required) Prefix for the output filtered BAM file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- removereads
