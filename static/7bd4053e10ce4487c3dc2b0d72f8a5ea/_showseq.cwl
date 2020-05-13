class: CommandLineTool
id: _showseq.cwl
inputs:
- id: format
  doc: 'menu       [2] Display format (Values: 0 (Enter your own list of things to
    display); 1 (Sequence only); 2 (Default sequence with features); 3 (Pretty sequence);
    4 (One frame translation); 5 (Three frame translations); 6 (Six frame translations);
    7 (Restriction enzyme map); 8 (Baroque))'
  type: boolean
  inputBinding:
    prefix: -format
outputs: []
cwlVersion: v1.1
baseCommand:
- _showseq
