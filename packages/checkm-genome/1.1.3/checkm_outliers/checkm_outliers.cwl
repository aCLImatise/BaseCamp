class: CommandLineTool
id: checkm_outliers.cwl
inputs:
- id: in_distributions
  doc: 'reference distribution used to identify outliers; integer between 0 and 100
    (default: 95)'
  type: long?
  inputBinding:
    prefix: --distributions
- id: in_report_type
  doc: "report sequences that are outliers in 'all' or 'any' reference distribution\
    \ (default: any)"
  type: string?
  inputBinding:
    prefix: --report_type
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory?
  inputBinding:
    prefix: --extension
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_results_dir
  doc: directory specified during qa command
  type: string
  inputBinding:
    position: 0
- id: in_bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 1
- id: in_tetra_profile
  doc: tetranucleotide profiles for each sequence (see tetra command)
  type: string
  inputBinding:
    position: 2
- id: in_output_file
  doc: print results to file
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- outliers
