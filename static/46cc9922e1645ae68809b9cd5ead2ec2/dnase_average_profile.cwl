class: CommandLineTool
id: dnase_average_profile.py.cwl
inputs:
- id: regions
  doc: BED file of the regions you want to generate the average profile for
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: The BAM file containing the DNase-seq data
  type: string
  inputBinding:
    position: 1
- id: output
  doc: filename to write the output to
  type: string
  inputBinding:
    position: 2
- id: window_size
  doc: 'Size of flanking area around centre of the regions to plot (default: 100)'
  type: string
  inputBinding:
    prefix: --window_size
- id: bias_file
  doc: Location of the sorted, index
  type: string
  inputBinding:
    prefix: --bias-file
- id: i
  doc: Ignores any strand information in BED file and plots data relative to reference
    strand
  type: boolean
  inputBinding:
    prefix: -i
- id: c
  doc: Combine the strand information into one graph
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: Normalise cut counts to a fraction peaks
  type: boolean
  inputBinding:
    prefix: -n
- id: b
  doc: Normalise for cutting bias
  type: boolean
  inputBinding:
    prefix: -b
- id: a
  doc: ATAC-seq mode
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_average_profile.py
