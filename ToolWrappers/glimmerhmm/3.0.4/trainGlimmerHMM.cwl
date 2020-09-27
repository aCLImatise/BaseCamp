class: CommandLineTool
id: trainGlimmerHMM.cwl
inputs:
- id: in_i_considered_eg
  doc: ",i2,...,in\nisochores to be considered (e.g. if two isochores are desired\
    \ between\n0-40% GC content and 40-100% then the option should be: -i 0,40,100;\n\
    default is -i 0,100 )"
  type: long
  inputBinding:
    prefix: -i
- id: in_name_name_training
  doc: name = name of training directory
  type: Directory
  inputBinding:
    prefix: -d
- id: in_val_average_value_upstream_known
  doc: val = average value of upstream UTR region if known
  type: string
  inputBinding:
    prefix: -f
- id: in_val_average_value_downstream_known
  doc: val = average value of downstream UTR region if known
  type: string
  inputBinding:
    prefix: -l
- id: in_val_average_value_intergenic_known
  doc: val = average value of intergenic region if known
  type: string
  inputBinding:
    prefix: -n
- id: in_val_value_flanking
  doc: val = value of flanking region around genes (default=200)
  type: long
  inputBinding:
    prefix: -v
- id: in_val_build_default
  doc: val = build 1st or 2nd order markov model (default=1)
  type: long
  inputBinding:
    prefix: -b
- id: in_val_when_constructing
  doc: val = 1 when constructing decision trees from false.* files (default=0)
  type: long
  inputBinding:
    prefix: -t
- id: in_agtcgtcgctagctagctagcatc_gag_tcttttcgatcgaggactagactt
  doc: CTAGCTAGCTAGCATAGCATACGAGCATATCGGTCATGAGACTGATTGGGC
  type: string
  inputBinding:
    position: 0
- id: in_tttagctagctagcatagcatacg_agca_tatcggtagactgattgggttta
  doc: TGCGTTA
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trainGlimmerHMM
