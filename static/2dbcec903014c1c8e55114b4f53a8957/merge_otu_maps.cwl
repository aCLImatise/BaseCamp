class: CommandLineTool
id: merge_otu_maps.py.cwl
inputs:
- id: otu_map_fps
  doc: the otu map filepaths, comma-separated and ordered as the OTU pickers were
    run [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_map_fps
- id: output_fp
  doc: path to write output OTU map [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_otu_maps.py
