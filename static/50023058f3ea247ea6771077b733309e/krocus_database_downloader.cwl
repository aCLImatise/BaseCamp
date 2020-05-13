class: CommandLineTool
id: krocus_database_downloader.cwl
inputs:
- id: list_species
  doc: 'List all available species (default: False)'
  type: boolean
  inputBinding:
    prefix: --list_species
- id: species
  doc: 'Species to download (default: None)'
  type: string
  inputBinding:
    prefix: --species
- id: output_directory
  doc: 'Output directory (default: mlst_files)'
  type: string
  inputBinding:
    prefix: --output_directory
- id: verbose
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- krocus_database_downloader
