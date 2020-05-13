class: CommandLineTool
id: filter_otus_by_sample.py.cwl
inputs:
- id: otu_map_fp
  doc: path to the input OTU map (i.e., the output from pick_otus.py) [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_map_fp
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: samples_to_extract
  doc: This is a list of sample ids, which should be removed from the OTU file [REQUIRED]
  type: string
  inputBinding:
    prefix: --samples_to_extract
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_otus_by_sample.py
