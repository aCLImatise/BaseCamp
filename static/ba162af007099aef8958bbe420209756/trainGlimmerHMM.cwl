class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trainGlimmerHMM.cwl
inputs:
- id: i_isochores_considered
  doc: ',i2,...,in  isochores to be considered (e.g. if two isochores are desired
    between  0-40% GC content and 40-100% then the option should be: -i 0,40,100;  default
    is -i 0,100 )'
  type: string
  inputBinding:
    prefix: -i
- id: name_name_training
  doc: name = name of training directory
  type: string
  inputBinding:
    prefix: -d
- id: val_average_value_upstream_known
  doc: val = average value of upstream UTR region if known
  type: string
  inputBinding:
    prefix: -f
- id: val_average_value_downstream_known
  doc: 'val = average value of downstream UTR region if known                '
  type: string
  inputBinding:
    prefix: -l
- id: val_average_value_intergenic_known
  doc: val = average value of intergenic region if known
  type: string
  inputBinding:
    prefix: -n
- id: val_value_flanking
  doc: val = value of flanking region around genes (default=200)
  type: string
  inputBinding:
    prefix: -v
- id: val_build_default
  doc: val = build 1st or 2nd order markov model (default=1)
  type: string
  inputBinding:
    prefix: -b
- id: val_when_constructing
  doc: val = 1 when constructing decision trees from false.* files (default=0)
  type: string
  inputBinding:
    prefix: -t
- id: m_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: exon_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: optional_parameters
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- trainGlimmerHMM
