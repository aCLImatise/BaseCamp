class: CommandLineTool
id: comparem_lgt_di.cwl
inputs:
- id: in_file_ext
  doc: 'extension of files to process (default: fna)'
  type: File?
  inputBinding:
    prefix: --file_ext
- id: in_crit_value
  doc: "critical value for defining deviant genes (default:\n0.001)"
  type: double?
  inputBinding:
    prefix: --crit_value
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
- id: in_nucleotide_gene_files
  doc: input files with genes in nucleotide space
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: "output directory to write dinucleotide usage for each\ngene in each genome"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- comparem
- lgt_di
