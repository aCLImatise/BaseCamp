class: CommandLineTool
id: socru_create.cwl
inputs:
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: Input FASTA file (optionally gzipped)
  type: string
  inputBinding:
    position: 1
- id: max_bases_from_ends
  doc: 'Only look at this number of bases from start and end of fragment (default:
    None)'
  type: long
  inputBinding:
    prefix: --max_bases_from_ends
- id: threads
  doc: 'No. of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: fragment_order
  doc: 'Order of fragments, you may need to change this, example 1-2-3-4-5-6-7 (default:
    None)'
  type: string
  inputBinding:
    prefix: --fragment_order
- id: dna_a_fast_a
  doc: 'Location of dnaA FASTA file, defaults to bundled (default: None)'
  type: string
  inputBinding:
    prefix: --dnaa_fasta
- id: dif_fast_a
  doc: 'Location of dif FASTA file, defaults to bundled (default: None)'
  type: string
  inputBinding:
    prefix: --dif_fasta
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- socru_create
