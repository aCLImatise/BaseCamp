class: CommandLineTool
id: socru.cwl
inputs:
- id: species
  doc: Species name, use socru_species to see all available
  type: string
  inputBinding:
    position: 0
- id: input_files
  doc: Input FASTA files (optionally gzipped)
  type: string
  inputBinding:
    position: 1
- id: db_dir
  doc: 'Base directory for species databases, defaults to bundled (default: None)'
  type: string
  inputBinding:
    prefix: --db_dir
- id: threads
  doc: 'No. of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: output_file
  doc: 'Output filename, defaults to STDOUT (default: None)'
  type: string
  inputBinding:
    prefix: --output_file
- id: output_plot_file
  doc: 'Filename of plot of genome structure (default: genome_structure.pdf)'
  type: string
  inputBinding:
    prefix: --output_plot_file
- id: novel_profiles
  doc: 'Filename for novel profiles (default: profile.txt.novel)'
  type: string
  inputBinding:
    prefix: --novel_profiles
- id: new_fragments
  doc: 'Filename for novel fragments (default: novel_fragments.fa)'
  type: string
  inputBinding:
    prefix: --new_fragments
- id: top_blast_hits
  doc: 'Filename for top blast hits (default: None)'
  type: string
  inputBinding:
    prefix: --top_blast_hits
- id: output_operon_directions_file
  doc: 'Filename of directions of operons (default: operon_directions.txt)'
  type: string
  inputBinding:
    prefix: --output_operon_directions_file
- id: max_bases_from_ends
  doc: 'Only look at this number of bases from start and end of fragment (default:
    None)'
  type: long
  inputBinding:
    prefix: --max_bases_from_ends
- id: not_circular
  doc: 'Assume chromosome is not circularised (default: False)'
  type: boolean
  inputBinding:
    prefix: --not_circular
- id: min_bit_score
  doc: 'Minimum bit score (default: 100)'
  type: long
  inputBinding:
    prefix: --min_bit_score
- id: min_alignment_length
  doc: 'Minimum alignment length (default: 100)'
  type: long
  inputBinding:
    prefix: --min_alignment_length
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
- socru
