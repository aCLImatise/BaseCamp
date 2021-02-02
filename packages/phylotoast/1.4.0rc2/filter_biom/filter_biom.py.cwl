class: CommandLineTool
id: filter_biom.py.cwl
inputs:
- id: in_filter_ot_uids_fnh
  doc: "Path to file to write out the list of OTUIDs not\npresent in any SampleIDs\
    \ in mapping file. This output\nis usually used to filter out unwanted otuids\
    \ from\n.tre file. If not given, the discarded OTUIDs list\nwill be saved in the\
    \ current working directory.\n"
  type: File
  inputBinding:
    prefix: --filter_otuids_fnh
- id: in_input_biom_fnh
  doc: BIOM file path.
  type: string
  inputBinding:
    position: 0
- id: in_output_biom_fnh
  doc: Filtered biom output file.
  type: string
  inputBinding:
    position: 1
- id: in_mapping_fnh
  doc: "Mapping file with sampleIDs to retain in it. The\n'#SampleID' column will\
    \ be used to get the list of all\nids to retain."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filter_ot_uids_fnh
  doc: "Path to file to write out the list of OTUIDs not\npresent in any SampleIDs\
    \ in mapping file. This output\nis usually used to filter out unwanted otuids\
    \ from\n.tre file. If not given, the discarded OTUIDs list\nwill be saved in the\
    \ current working directory.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_filter_ot_uids_fnh)
cwlVersion: v1.1
baseCommand:
- filter_biom.py
