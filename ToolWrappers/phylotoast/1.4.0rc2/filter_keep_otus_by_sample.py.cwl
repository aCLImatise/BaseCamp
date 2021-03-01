class: CommandLineTool
id: filter_keep_otus_by_sample.py.cwl
inputs:
- id: in_otu_map
  doc: "path to the input OTU map (i.e., the output from\npick_otus.py) [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --otu_map
- id: in_samples_to_keep_fp
  doc: "path to the file containing Sample IDs to keep in the\nnew OTU map. One Sample\
    \ ID per line."
  type: File?
  inputBinding:
    prefix: --samples_to_keep_fp
- id: in_output_otu_map_fp
  doc: path to the output filtered OTU map
  type: File?
  inputBinding:
    prefix: --output_otu_map_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_otu_map_fp
  doc: path to the output filtered OTU map
  type: File?
  outputBinding:
    glob: $(inputs.in_output_otu_map_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- filter_keep_otus_by_sample.py
