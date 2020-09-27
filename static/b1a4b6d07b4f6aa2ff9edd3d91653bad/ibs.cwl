class: CommandLineTool
id: ibs.cwl
inputs:
- id: in_glf_slash_f
  doc: 'input GLF filename:'
  type: boolean
  inputBinding:
    prefix: -glf/-f
- id: in_out_filename_slash_o
  doc: 'filename(prefix):'
  type: File
  inputBinding:
    prefix: -outFileName/-o
- id: in_ninds_lash_n
  doc: 'nubmer of individuals in GLF file:'
  type: boolean
  inputBinding:
    prefix: -nInd/-n
- id: in_in_done_slash_i_one
  doc: 'individuals 1:'
  type: boolean
  inputBinding:
    prefix: -ind1/i1
- id: in_ind_two_slash_i_two
  doc: 'individuals 2:'
  type: boolean
  inputBinding:
    prefix: -ind2/i2
- id: in_all_pairs_slash_a
  doc: 'analyse all pairs:'
  type: boolean
  inputBinding:
    prefix: -allpairs/-a
- id: in_max_sites_slash_m
  doc: 'maximum sites to analyze:'
  type: boolean
  inputBinding:
    prefix: -maxSites/-m
- id: in_model
  doc: "ibs model\nsingle:        0 all 10 genotypes, 1 HO/HE\npair:          0 all\
    \ 10 genotypes, 1 HO/HE, 2 ABCD"
  type: boolean
  inputBinding:
    prefix: -model
- id: in_seed
  doc: ibs -seed 0 use seed for random start
  type: boolean
  inputBinding:
    prefix: -seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ibs
