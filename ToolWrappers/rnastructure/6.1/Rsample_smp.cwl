class: CommandLineTool
id: Rsample_smp.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_c_param
  doc: "Specify a C parameter used in Rsample calculations.\nDefault is 0.5 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --cparam
- id: in_max_distance
  doc: "Specify a maximum pairing distance between nucleotides.\nDefault is no restriction\
    \ on distance between pairs."
  type: boolean?
  inputBinding:
    prefix: --maxdistance
- id: in_num_samples
  doc: "Specify number of samples for stochastic sampling calculation used in\nRsample.\n\
    Default is 10,000."
  type: boolean?
  inputBinding:
    prefix: --numsamples
- id: in_offset
  doc: "Specify an Offset parameter used in Rsample calculations.\nDefault is 1.1\
    \ kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --offset
- id: in_react_paired_end
  doc: "Give full path to file with end-of-helix paired nucleotide reactivities\n\
    dataset.\nDefault values are in rsample directory in $DATAPATH."
  type: boolean?
  inputBinding:
    prefix: --reactPairedEnd
- id: in_react_paired_middle
  doc: "Give full path to file with middle-of-helix paired nucleotide reactivities\n\
    dataset.\nDefault values are in rsample directory in $DATAPATH"
  type: boolean?
  inputBinding:
    prefix: --reactPairedMiddle
- id: in_react_unpaired
  doc: "Give full path to file with unpaired nucleotide reactivities dataset.\nDefault\
    \ values are in rsample directory in $DATAPATH"
  type: boolean?
  inputBinding:
    prefix: --reactUnpaired
- id: in_seed
  doc: "Specify a random seed.\nDefault is to set random seed from current time."
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C.\n"
  type: boolean?
  inputBinding:
    prefix: --temperature
- id: in_r_sample
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_shape_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_pfs_file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Rsample-smp
