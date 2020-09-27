class: CommandLineTool
id: chembl_sim.cwl
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
- id: in_threshold
  doc: "similarity threshold a number from range [70-100], 95\nis a default value"
  type: long
  inputBinding:
    prefix: --threshold
- id: in_source_format
  doc: "input file format. Can be one of 3: chembl_id (a comma\nseparated list of\
    \ chembl IDs), sdf: (MDL molfile), smi\n(file containing smiles)"
  type: File
  inputBinding:
    prefix: --source-format
- id: in_destination_format
  doc: "output file format. can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi,\
    \ inchi_key]"
  type: File
  inputBinding:
    prefix: --destination-format
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
- id: out_destination_format
  doc: "output file format. can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi,\
    \ inchi_key]"
  type: File
  outputBinding:
    glob: $(inputs.in_destination_format)
cwlVersion: v1.1
baseCommand:
- chembl_sim
