class: CommandLineTool
id: pxcat.cwl
inputs:
- id: in_seq_f
  doc: list of input sequence files (space delimited)
  type: File?
  inputBinding:
    prefix: --seqf
- id: in_f_list_file
  doc: file listing input files (one per line)
  type: boolean?
  inputBinding:
    prefix: --flistFILE
- id: in_out_f
  doc: output sequence file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_part_f
  doc: output partition file, none otherwise
  type: File?
  inputBinding:
    prefix: --partf
- id: in_uppercase
  doc: export characters in uppercase
  type: boolean?
  inputBinding:
    prefix: --uppercase
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output sequence file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
- id: out_part_f
  doc: output partition file, none otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_part_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxcat
