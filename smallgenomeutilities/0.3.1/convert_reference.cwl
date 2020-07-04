class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convert_reference.cwl
inputs:
- id: name_target_contig
  doc: Name of target contig
  type: string
  inputBinding:
    prefix: -t
- id: print_more_information
  doc: Print more information
  type: boolean
  inputBinding:
    prefix: -v
- id: msa_input_contigs
  doc: MSA input of all contigs aligned
  type: string
  inputBinding:
    prefix: -m
- id: input_sambam_file
  doc: Input SAM/BAM file
  type: string
  inputBinding:
    prefix: -i
- id: output_sambam_file
  doc: Output SAM/BAM file
  type: string
  inputBinding:
    prefix: -o
- id: insert_silent_padding
  doc: Insert silent padding states 'P' in CIGAR
  type: boolean
  inputBinding:
    prefix: -p
- id: use_x_m
  doc: Use X/= instead of M for Match/Mismatch states
  type: boolean
  inputBinding:
    prefix: -X
- id: hardclip_bases_default
  doc: Hard-clip bases instead of the default soft-clipping
  type: boolean
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_reference
