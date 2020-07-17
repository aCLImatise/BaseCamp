class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bigWigCluster.cwl
inputs:
- id: threads
  doc: '- number of threads to use, default 10'
  type: string
  inputBinding:
    prefix: -threads
- id: tmpdir
  doc: =/tmp/path - place to put temp files, default current dir
  type: boolean
  inputBinding:
    prefix: -tmpDir
- id: input_dot_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_json
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigCluster
