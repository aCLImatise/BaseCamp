class: CommandLineTool
id: comparem_stop_usage.cwl
inputs:
- id: in_counts
  doc: output raw counts instead of frequencies
  type: boolean
  inputBinding:
    prefix: --counts
- id: in_mean_gene_length
  doc: report mean gene length for genes with each stop codon
  type: boolean
  inputBinding:
    prefix: --mean_gene_length
- id: in_file_ext
  doc: 'extension of files to process (default: fna)'
  type: File
  inputBinding:
    prefix: --file_ext
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_nucleotide_gene_files
  doc: input files with genes in nucleotide space
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: output file indicating stop codon usage of each genome
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- comparem
- stop_usage
