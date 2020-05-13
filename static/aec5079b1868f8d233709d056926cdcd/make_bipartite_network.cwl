class: CommandLineTool
id: make_bipartite_network.py.cwl
inputs:
- id: biom_fp
  doc: the input file path for biom table. [REQUIRED]
  type: string
  inputBinding:
    prefix: --biom_fp
- id: map_fp
  doc: the input file path for mapping file. [REQUIRED]
  type: string
  inputBinding:
    prefix: --map_fp
- id: output_dir
  doc: directory to be created for storing the results. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: observation_md_header_key
  doc: Key to retrieve metadata (usually taxonomy) from the biom file. [REQUIRED]
  type: string
  inputBinding:
    prefix: --observation_md_header_key
- id: md_fields
  doc: metadata fields that will be the headers of the OTUNodeTable. If the biom table
    has metadata dictionaries, md_fields will be the keys extracted from the biom
    table metadata. Passed like "kingdom,phylum,class". [REQUIRED]
  type: string
  inputBinding:
    prefix: --md_fields
outputs: []
cwlVersion: v1.1
baseCommand:
- make_bipartite_network.py
