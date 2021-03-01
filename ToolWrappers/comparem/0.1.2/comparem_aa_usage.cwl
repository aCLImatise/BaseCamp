class: CommandLineTool
id: comparem_aa_usage.cwl
inputs:
- id: in_counts
  doc: output raw counts instead of frequencies
  type: boolean?
  inputBinding:
    prefix: --counts
- id: in_file_ext
  doc: 'extension of files to process (default: faa)'
  type: File?
  inputBinding:
    prefix: --file_ext
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_protein_gene_files
  doc: input files with genes in amino acid space
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: output file indicating amino acid usage for each
  type: string
  inputBinding:
    position: 1
- id: in_genome
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/comparem:0.1.2--py_0
cwlVersion: v1.1
baseCommand:
- comparem
- aa_usage
