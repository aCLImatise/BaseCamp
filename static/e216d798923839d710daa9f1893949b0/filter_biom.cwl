class: CommandLineTool
id: filter_biom.py.cwl
inputs:
- id: input_biom_fnh
  doc: BIOM file path.
  type: string
  inputBinding:
    position: 0
- id: output_biom_fnh
  doc: Filtered biom output file.
  type: string
  inputBinding:
    position: 1
- id: mapping_fnh
  doc: Mapping file with sampleIDs to retain in it. The '#SampleID' column will be
    used to get the list of all ids to retain.
  type: string
  inputBinding:
    position: 2
- id: filter_ot_uids_fnh
  doc: Path to file to write out the list of OTUIDs not present in any SampleIDs in
    mapping file. This output is usually used to filter out unwanted otuids from .tre
    file. If not given, the discarded OTUIDs list will be saved in the current working
    directory.
  type: string
  inputBinding:
    prefix: --filter_otuids_fnh
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_biom.py
