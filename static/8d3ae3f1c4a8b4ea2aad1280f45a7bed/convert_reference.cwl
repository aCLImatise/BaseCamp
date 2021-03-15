class: CommandLineTool
id: convert_reference.cwl
inputs:
- id: in_name_target_contig
  doc: Name of target contig
  type: string?
  inputBinding:
    prefix: -t
- id: in_print_more_information
  doc: Print more information
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_msa_input_contigs
  doc: MSA input of all contigs aligned
  type: string?
  inputBinding:
    prefix: -m
- id: in_input_sambam_file
  doc: Input SAM/BAM file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_sambam_file
  doc: Output SAM/BAM file
  type: File?
  inputBinding:
    prefix: -o
- id: in_insert_silent_padding
  doc: Insert silent padding states 'P' in CIGAR
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_use_x_states
  doc: Use X/= instead of M for Match/Mismatch states
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_hardclip_bases_instead
  doc: Hard-clip bases instead of the default soft-clipping
  type: boolean?
  inputBinding:
    prefix: -H
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sambam_file
  doc: Output SAM/BAM file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_sambam_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- convert_reference
