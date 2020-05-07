class: CommandLineTool
id: dnase_to_javatreeview.py.cwl
inputs:
- id: regions
  doc: BED file of the regions you want to generate the heatmap for
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: The BAM file containing the read data
  type: string
  inputBinding:
    position: 1
- id: output
  doc: filename to write the CSV output to
  type: string
  inputBinding:
    position: 2
- id: window_size
  doc: 'Size of flanking area around centre of the regions to plot (default: 100)'
  type: string
  inputBinding:
    prefix: --window_size
- id: i
  doc: Ignores strand information in BED file
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: 'Orders output the same as the input (default: orders by FOS)'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: Write absolute cut counts instead strand imbalanced counts
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: Normalise the cut data for each region between 0 and 1
  type: boolean
  inputBinding:
    prefix: -n
- id: c
  doc: Disable memory caching (low RAM mode)
  type: boolean
  inputBinding:
    prefix: -c
- id: b
  doc: Normalise for cutting bias
  type: boolean
  inputBinding:
    prefix: -b
- id: a
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
- id: bias_file
  doc: Location of the sorted, index
  type: string
  inputBinding:
    prefix: --bias-file
- id: r
  doc: Randomise the ordering of the output
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_to_javatreeview.py
