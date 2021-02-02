class: CommandLineTool
id: iCLIPro_bam_splitter.cwl
inputs:
- id: in_output_folder_default
  doc: output folder (default is cwd - current working directory)
  type: Directory
  inputBinding:
    prefix: -o
- id: in_use_only_reads
  doc: 'use only reads with minimum mapping quality (mapq) (0..100, default: 10)'
  type: long
  inputBinding:
    prefix: -q
- id: in_read_groups_default
  doc: 'read len groups (default: "A:16-39,A1:16-25,A2:26-32,A3:33-39,B:42")'
  type: long
  inputBinding:
    prefix: -g
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder_default
  doc: output folder (default is cwd - current working directory)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder_default)
cwlVersion: v1.1
baseCommand:
- iCLIPro_bam_splitter
