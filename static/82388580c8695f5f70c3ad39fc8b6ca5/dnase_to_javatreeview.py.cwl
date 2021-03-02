class: CommandLineTool
id: dnase_to_javatreeview.py.cwl
inputs:
- id: in_window_size
  doc: "Size of flanking area around centre of the regions to\nplot (default: 100)"
  type: long?
  inputBinding:
    prefix: --window_size
- id: in_ignores_strand_information
  doc: Ignores strand information in BED file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_orders_output_same
  doc: "Orders output the same as the input (default: orders\nby FOS)"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_write_absolute_counts
  doc: Write absolute cut counts instead strand imbalanced
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_disable_memory_caching
  doc: Disable memory caching (low RAM mode)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_normalise_cutting_bias
  doc: Normalise for cutting bias
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_atacseq_mode_default
  doc: 'ATAC-seq mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_bias_file
  doc: Location of the sorted, index
  type: File?
  inputBinding:
    prefix: --bias-file
- id: in_randomise_ordering_output
  doc: Randomise the ordering of the output
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_regions
  doc: "BED file of the regions you want to generate the\nheatmap for"
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: The BAM file containing the read data
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: filename to write the CSV output to
  type: string
  inputBinding:
    position: 2
- id: in_counts
  doc: -n                    Normalise the cut data for each region between 0 and
    1
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dnase_to_javatreeview.py
