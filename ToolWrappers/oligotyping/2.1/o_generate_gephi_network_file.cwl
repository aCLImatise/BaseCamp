class: CommandLineTool
id: o_generate_gephi_network_file.cwl
inputs:
- id: in_sample_mapping
  doc: "Providing a sample mapping file will make Gephi file\nmuch more useful."
  type: File?
  inputBinding:
    prefix: --sample-mapping
- id: in_unit_mapping
  doc: "Structurally, unit mapping is identical to sample\nmapping file, instead,\
    \ it describes properties of\nunits."
  type: File?
  inputBinding:
    prefix: --unit-mapping
- id: in_sample_size
  doc: 'Sample node size. Default: 8'
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_unit_size
  doc: 'Unit node size. Default: 2'
  type: long?
  inputBinding:
    prefix: --unit-size
- id: in_min_abundance
  doc: "Minimum abundance of a unit to be included in the\nnetwork. It usually a good\
    \ idea to give some cut-off\nsince each unit (whether it is an oligotype or an\
    \ MED\nnode) is going to be a part of the network (total\nnumber of reads divided\
    \ by 10,000 might be a good\nstart)."
  type: long?
  inputBinding:
    prefix: --min-abundance
- id: in_min_sum_normalized_percent
  doc: "This defines the minimum sum normalized percent for an\noligotype or MED node\
    \ in a sample to form an edge in\nthe network. Sum normalization takes an oligotype\
    \ or\nMED node, generates a vector from its percent\noccurence in all samples,\
    \ then normalizes the percent\nabundances so the total of the vector adds up to\
    \ 100%.\nThe default is 1, but it might be a good idea to set\nit to 0 for samples\
    \ with a lot of samples (such as\nmore than 100 samples)."
  type: long?
  inputBinding:
    prefix: --min-sum-normalized-percent
- id: in_skip_sample_labels
  doc: Leave sample labels blank.
  type: boolean?
  inputBinding:
    prefix: --skip-sample-labels
- id: in_skip_unit_labels
  doc: Leave unit labels blank.
  type: boolean?
  inputBinding:
    prefix: --skip-unit-labels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- o-generate-gephi-network-file
