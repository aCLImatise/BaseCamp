class: CommandLineTool
id: socru_create.cwl
inputs:
- id: in_max_bases_from_ends
  doc: "Only look at this number of bases from start and end\nof fragment (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --max_bases_from_ends
- id: in_threads
  doc: 'No. of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fragment_order
  doc: "Order of fragments, you may need to change this,\nexample 1-2-3-4-5-6-7 (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --fragment_order
- id: in_dna_a_fast_a
  doc: "Location of dnaA FASTA file, defaults to bundled\n(default: None)"
  type: File?
  inputBinding:
    prefix: --dnaa_fasta
- id: in_dif_fast_a
  doc: "Location of dif FASTA file, defaults to bundled\n(default: None)"
  type: File?
  inputBinding:
    prefix: --dif_fasta
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: Input FASTA file (optionally gzipped)
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
- socru_create
