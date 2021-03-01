class: CommandLineTool
id: chembl_t2m.cwl
inputs:
- id: in_input
  doc: input file, standard input by default
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: output file, standard output by default
  type: File?
  inputBinding:
    prefix: --output
- id: in_destination_format
  doc: "output file format. can be chosen from 3 options:\n[sdf, smi, chembl_id]"
  type: File?
  inputBinding:
    prefix: --destination-format
- id: in_human
  doc: "human readable output: prints header and first column\nwith original names"
  type: boolean?
  inputBinding:
    prefix: --Human
- id: in_parent
  doc: when fetching compounds include their parents as well
  type: boolean?
  inputBinding:
    prefix: --parent
- id: in_chunk_size
  doc: "Size of chunk of data retrieved from API\n"
  type: long?
  inputBinding:
    prefix: --chunk-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file, standard output by default
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_destination_format
  doc: "output file format. can be chosen from 3 options:\n[sdf, smi, chembl_id]"
  type: File?
  outputBinding:
    glob: $(inputs.in_destination_format)
hints: []
cwlVersion: v1.1
baseCommand:
- chembl_t2m
