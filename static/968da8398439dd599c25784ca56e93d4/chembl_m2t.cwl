class: CommandLineTool
id: chembl_m2t.cwl
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
- id: in_source_format
  doc: "input file format. Can be one of 3: chembl_id (a comma\nseparated list of\
    \ chembl IDs), sdf: (MDL molfile), smi\n(file containing smiles)"
  type: File
  inputBinding:
    prefix: --source-format
- id: in_destination_format
  doc: "output file format. can be chosen from 3 options:\n[uniprot, gene_name, chembl_id]"
  type: File
  inputBinding:
    prefix: --destination-format
- id: in_human
  doc: "human readable output: prints header and first column\nwith original names"
  type: boolean
  inputBinding:
    prefix: --Human
- id: in_organism
  doc: Filter results by organism
  type: string
  inputBinding:
    prefix: --organism
- id: in_parent
  doc: "when fetching targets include also targets from\nparents of given molecules"
  type: boolean
  inputBinding:
    prefix: --parent
- id: in_chunk_size
  doc: "Size of chunk of data retrieved from API\n"
  type: long
  inputBinding:
    prefix: --chunk-size
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
  doc: "output file format. can be chosen from 3 options:\n[uniprot, gene_name, chembl_id]"
  type: File
  outputBinding:
    glob: $(inputs.in_destination_format)
cwlVersion: v1.1
baseCommand:
- chembl_m2t
