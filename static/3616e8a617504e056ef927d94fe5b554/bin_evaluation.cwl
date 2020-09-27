class: CommandLineTool
id: bin_evaluation.cwl
inputs:
- id: in_specify_directory_containing_putative_genomes
  doc: Specify the directory containing Putative genomes
  type: boolean
  inputBinding:
    prefix: -b
- id: in_specify_directory_containing_reference_genomes
  doc: Specify directory containing reference genomes
  type: boolean
  inputBinding:
    prefix: -r
- id: in_specify_suffix_bins
  doc: specify suffix of bins e.g .fa, .fna, .fasta, etc.
  type: boolean
  inputBinding:
    prefix: -l
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bin_evaluation
