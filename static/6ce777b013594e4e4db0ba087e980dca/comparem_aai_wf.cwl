class: CommandLineTool
id: comparem_aai_wf.cwl
inputs:
- id: in_evalue
  doc: "e-value cutoff for identifying initial blast hits\n(default: 0.001)"
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_per_identity
  doc: 'percent identity for defining homology (default: 30.0)'
  type: double?
  inputBinding:
    prefix: --per_identity
- id: in_per_aln_len
  doc: "percent alignment length of query sequence for\ndefining homology (default:\
    \ 70.0)"
  type: long?
  inputBinding:
    prefix: --per_aln_len
- id: in_file_ext
  doc: 'extension of files to process (default: fna)'
  type: File?
  inputBinding:
    prefix: --file_ext
- id: in_proteins
  doc: indicates the input files contain protein sequences
  type: boolean?
  inputBinding:
    prefix: --proteins
- id: in_force_table
  doc: force use of specific translation table
  type: string?
  inputBinding:
    prefix: --force_table
- id: in_blastp
  doc: use blastp instead of diamond
  type: boolean?
  inputBinding:
    prefix: --blastp
- id: in_sensitive
  doc: use sensitive mode of DIAMOND
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_keep_headers
  doc: "indicates FASTA headers already have the format\n<genome_id>~<gene_id>"
  type: boolean?
  inputBinding:
    prefix: --keep_headers
- id: in_keep_r_bhs
  doc: create file with reciprocal best hits
  type: boolean?
  inputBinding:
    prefix: --keep_rbhs
- id: in_tmp_dir
  doc: "specify alternative directory for temporary files\n(default: /tmp)"
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
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
- id: in_input_files
  doc: genome files
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: output directory
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
- aai_wf
