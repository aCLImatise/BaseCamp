class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_outliers.cwl
inputs:
- id: distributions
  doc: 'reference distribution used to identify outliers; integer between 0 and 100
    (default: 95)'
  type: string
  inputBinding:
    prefix: --distributions
- id: report_type
  doc: "report sequences that are outliers in 'all' or 'any' reference distribution\
    \ (default: any)"
  type: string
  inputBinding:
    prefix: --report_type
- id: extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --extension
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: results_dir
  doc: directory specified during qa command
  type: string
  inputBinding:
    position: 0
- id: bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 1
- id: tetra_profile
  doc: tetranucleotide profiles for each sequence (see tetra command)
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: print results to file
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- outliers
