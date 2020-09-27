class: CommandLineTool
id: ivar_removereads.cwl
inputs:
- id: in_required_input_bam
  doc: (Required) Input BAM file  trimmed with ‘ivar trim’. Must be sorted which can
    be done using `samtools sort`.
  type: boolean
  inputBinding:
    prefix: -i
- id: in_required_text_file
  doc: (Required) Text file with primer indices separated by spaces. This is the output
    of `getmasked` command.
  type: File
  inputBinding:
    prefix: -t
- id: in_required_bed_file
  doc: (Required) BED file with primer sequences and positions.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_required_prefix_output
  doc: (Required) Prefix for the output filtered BAM file
  type: File
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_text_file
  doc: (Required) Text file with primer indices separated by spaces. This is the output
    of `getmasked` command.
  type: File
  outputBinding:
    glob: $(inputs.in_required_text_file)
- id: out_required_prefix_output
  doc: (Required) Prefix for the output filtered BAM file
  type: File
  outputBinding:
    glob: $(inputs.in_required_prefix_output)
cwlVersion: v1.1
baseCommand:
- ivar
- removereads
