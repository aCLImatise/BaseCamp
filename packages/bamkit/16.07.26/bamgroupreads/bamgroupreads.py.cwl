class: CommandLineTool
id: bamgroupreads.py.cwl
inputs:
- id: in_input
  doc: Input BAM file
  type: File?
  inputBinding:
    prefix: --input
- id: in_read_group
  doc: Read group(s) to extract (comma separated)
  type: string?
  inputBinding:
    prefix: --readgroup
- id: in_reset_dups
  doc: Reset duplicate flags
  type: boolean?
  inputBinding:
    prefix: --reset_dups
- id: in_fix_flags
  doc: Fix mate flags for secondary reads
  type: boolean?
  inputBinding:
    prefix: --fix_flags
- id: in_input_sam_format
  doc: Input is SAM format
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_output_bam_format
  doc: Output BAM format
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_uncompressed_bam
  doc: Output uncompressed BAM format (implies -b)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_split_reads_flag
  doc: split reads are flagged as secondary, not supplementary. For compatibility
    with legacy BWA-MEM "-M" flag
  type: boolean?
  inputBinding:
    prefix: -M
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamkit:16.07.26--py_0
cwlVersion: v1.1
baseCommand:
- bamgroupreads.py
