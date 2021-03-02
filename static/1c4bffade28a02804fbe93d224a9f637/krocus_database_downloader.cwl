class: CommandLineTool
id: krocus_database_downloader.cwl
inputs:
- id: in_list_species
  doc: 'List all available species (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list_species
- id: in_species
  doc: 'Species to download (default: None)'
  type: string?
  inputBinding:
    prefix: --species
- id: in_output_directory
  doc: 'Output directory (default: mlst_files)'
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_verbose
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory (default: mlst_files)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- krocus_database_downloader
