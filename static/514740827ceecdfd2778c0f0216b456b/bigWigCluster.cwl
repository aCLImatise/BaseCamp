class: CommandLineTool
id: bigWigCluster.cwl
inputs:
- id: input_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_json
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_tab
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: threads
  doc: threads to use, default 10
  type: string
  inputBinding:
    prefix: -threads
- id: tmpdir
  doc: =/tmp/path - place to put temp files, default current dir
  type: boolean
  inputBinding:
    prefix: -tmpDir
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigCluster
