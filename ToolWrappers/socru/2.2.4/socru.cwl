class: CommandLineTool
id: socru.cwl
inputs:
- id: in_db_dir
  doc: "Base directory for species databases, defaults to\nbundled (default: None)"
  type: Directory
  inputBinding:
    prefix: --db_dir
- id: in_threads
  doc: 'No. of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_output_file
  doc: 'Output filename, defaults to STDOUT (default: None)'
  type: File
  inputBinding:
    prefix: --output_file
- id: in_output_plot_file
  doc: "Filename of plot of genome structure (default:\ngenome_structure.pdf)"
  type: File
  inputBinding:
    prefix: --output_plot_file
- id: in_novel_profiles
  doc: "Filename for novel profiles (default:\nprofile.txt.novel)"
  type: File
  inputBinding:
    prefix: --novel_profiles
- id: in_new_fragments
  doc: "Filename for novel fragments (default:\nnovel_fragments.fa)"
  type: File
  inputBinding:
    prefix: --new_fragments
- id: in_top_blast_hits
  doc: 'Filename for top blast hits (default: None)'
  type: File
  inputBinding:
    prefix: --top_blast_hits
- id: in_output_operon_directions_file
  doc: "Filename of directions of operons (default:\noperon_directions.txt)"
  type: File
  inputBinding:
    prefix: --output_operon_directions_file
- id: in_max_bases_from_ends
  doc: "Only look at this number of bases from start and end\nof fragment (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --max_bases_from_ends
- id: in_not_circular
  doc: 'Assume chromosome is not circularised (default: False)'
  type: boolean
  inputBinding:
    prefix: --not_circular
- id: in_min_bit_score
  doc: 'Minimum bit score (default: 100)'
  type: long
  inputBinding:
    prefix: --min_bit_score
- id: in_min_alignment_length
  doc: 'Minimum alignment length (default: 100)'
  type: long
  inputBinding:
    prefix: --min_alignment_length
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_species
  doc: Species name, use socru_species to see all available
  type: string
  inputBinding:
    position: 0
- id: in_input_files
  doc: Input FASTA files (optionally gzipped)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output filename, defaults to STDOUT (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_plot_file
  doc: "Filename of plot of genome structure (default:\ngenome_structure.pdf)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_plot_file)
- id: out_output_operon_directions_file
  doc: "Filename of directions of operons (default:\noperon_directions.txt)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_operon_directions_file)
cwlVersion: v1.1
baseCommand:
- socru
