class: CommandLineTool
id: dnase_average_profile.py.cwl
inputs:
- id: in_window_size
  doc: "Size of flanking area around centre of the regions to\nplot (default: 100)"
  type: long?
  inputBinding:
    prefix: --window_size
- id: in_bias_file
  doc: Location of the sorted, index
  type: File?
  inputBinding:
    prefix: --bias-file
- id: in_ignores_strand_information
  doc: "Ignores any strand information in BED file and plots\ndata relative to reference\
    \ strand"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_combine_strand_information
  doc: Combine the strand information into one graph
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_normalise_cut_counts
  doc: Normalise cut counts to a fraction peaks
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_normalise_cutting_bias
  doc: Normalise for cutting bias
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_atacseq_mode
  doc: ATAC-seq mode
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_regions
  doc: "BED file of the regions you want to generate the\naverage profile for"
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: The BAM file containing the DNase-seq data
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: filename to write the output to
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dnase_average_profile.py
