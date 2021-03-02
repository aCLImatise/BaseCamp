class: CommandLineTool
id: taxsbp.cwl
inputs:
- id: in_input_file
  doc: "Tab-separated with the fields: sequence id <tab>\nsequence length <tab> taxonomic\
    \ id [<tab>\nspecialization]"
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: "Path to the output tab-separated file. Fields:\nsequence id <tab> sequence\
    \ start <tab> sequence end\n<tab> sequence length <tab> taxonomic id <tab> bin\
    \ id\n[<tab> specialization]. Default: STDOUT"
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_nodes_file
  doc: nodes.dmp from NCBI Taxonomy
  type: File?
  inputBinding:
    prefix: --nodes-file
- id: in_merged_file
  doc: merged.dmp from NCBI Taxonomy
  type: File?
  inputBinding:
    prefix: --merged-file
- id: in_bin_len
  doc: "Maximum bin length (in bp). Use this parameter insted\nof -b to define the\
    \ number of bins. Default: length of\nthe biggest group [Mutually exclusive -b]"
  type: long?
  inputBinding:
    prefix: --bin-len
- id: in_bins
  doc: "Approximate number of bins (estimated by total\nlength/bin number). [Mutually\
    \ exclusive -l]"
  type: long?
  inputBinding:
    prefix: --bins
- id: in_fragment_len
  doc: Fragment sequences into pieces
  type: string?
  inputBinding:
    prefix: --fragment-len
- id: in_overlap_len
  doc: Overlap length between fragments [Only valid with -a]
  type: long?
  inputBinding:
    prefix: --overlap-len
- id: in_pre_cluster
  doc: "Pre-cluster sequences into any existing rank, leaves\nor specialization. Entries\
    \ will not be divided in bins\n['leaves',specialization name,rank name]"
  type: string?
  inputBinding:
    prefix: --pre-cluster
- id: in_bin_exclusive
  doc: "Make bins rank, leaves or specialization exclusive.\nBins will not have mixed\
    \ entries. When the chosen rank\nis not present on a sequence lineage, this sequence\n\
    will be leaf/specialization exclusive.\n['leaves',specialization name,rank name]"
  type: string?
  inputBinding:
    prefix: --bin-exclusive
- id: in_specialization
  doc: "Specialization name (e.g. assembly, strain). If given,\nTaxSBP will cluster\
    \ entries on a specialized level\nafter the leaf. The specialization identifier\
    \ should\nbe provided as an extra collumn in the input_file and\nshould respect\
    \ the taxonomic hiercharchy: One leaf can\nhave multiple specializations but a\
    \ specialization is\npresent in only one leaf"
  type: string?
  inputBinding:
    prefix: --specialization
- id: in_update_file
  doc: "Previously generated clusters to be updated. Output\nonly new sequences"
  type: File?
  inputBinding:
    prefix: --update-file
- id: in_allow_merge
  doc: "When updating, allow merging of existing bins. Will\noutput the whole set,\
    \ not only new bins"
  type: boolean?
  inputBinding:
    prefix: --allow-merge
- id: in_silent
  doc: Do not print warning to STDERR
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Path to the output tab-separated file. Fields:\nsequence id <tab> sequence\
    \ start <tab> sequence end\n<tab> sequence length <tab> taxonomic id <tab> bin\
    \ id\n[<tab> specialization]. Default: STDOUT"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/taxsbp:1.1.1--py_0
cwlVersion: v1.1
baseCommand:
- taxsbp
