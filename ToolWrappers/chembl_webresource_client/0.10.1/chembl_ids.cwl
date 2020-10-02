class: CommandLineTool
id: chembl_ids.cwl
inputs:
- id: in_input
  doc: input file, standard input by default
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: output file, standard output by default
  type: File
  inputBinding:
    prefix: --output
- id: in_format
  doc: "output file format, can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi,\
    \ inchi_key]"
  type: File
  inputBinding:
    prefix: --format
- id: in_single
  doc: "if the name is resolved into more than one result,\nshow only the most relevant\
    \ one"
  type: boolean
  inputBinding:
    prefix: --single
- id: in_parent
  doc: instead of actual results, fetch their parents
  type: boolean
  inputBinding:
    prefix: --parent
- id: in_human
  doc: "human readable output: prints header and first column\nwith original names\n"
  type: boolean
  inputBinding:
    prefix: --Human
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file, standard output by default
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_format
  doc: "output file format, can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi,\
    \ inchi_key]"
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- chembl_ids
