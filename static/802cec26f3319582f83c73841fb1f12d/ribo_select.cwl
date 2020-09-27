class: CommandLineTool
id: ribo_select.cwl
inputs:
- id: in_output
  doc: 'output directory;default: None'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_feature
  doc: 'Feature, rRNA or RRNA; default: rRNA'
  type: string
  inputBinding:
    prefix: --feature
- id: in_specific_features
  doc: "colon:separated -- specific features; default:\n16S:23S:5S"
  type: long
  inputBinding:
    prefix: --specific_features
- id: in_clobber
  doc: 'overwrite previous output files: default: False'
  type: boolean
  inputBinding:
    prefix: --clobber
- id: in_clusters
  doc: "number of rDNA clusters;if submitting multiple\nrecords, must be a colon:separated\
    \ list whose length\nmatches number of genbank records. Default is inferred\n\
    from specific feature with fewest hits"
  type: long
  inputBinding:
    prefix: --clusters
- id: in_verbosity
  doc: "1 = debug(), 2 = info(), 3 = warning(), 4 = error()\nand 5 = critical(); default:\
    \ 2"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_debug
  doc: Enable debug messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output directory;default: None'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ribo
- select
