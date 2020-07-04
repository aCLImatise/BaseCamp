class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vardict_java.cwl
inputs:
- id: down_sample
  doc: 'For downsampling fraction.  e.g. 0.7 means roughly 70% downsampling.  Default:
    No downsampling.  Use with caution.  The downsampling will be random and non-reproducible.'
  type: string
  inputBinding:
    prefix: --downsample
- id: indicate_coordinates_zerobased
  doc: "Indicate whether coordinates are zero-based, as IGV uses.  Default: 1 for\
    \ BED file or amplicon BED file. Use 0 to turn it off. When using the -R option,\
    \ it's set to 0"
  type: string
  inputBinding:
    prefix: -z
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: var_5
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: var_6
  doc: ''
  type: string
  inputBinding:
    prefix: -E
- id: var_7
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: var_8
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: var_dict
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vardict-java
