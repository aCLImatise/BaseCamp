#!/usr/bin/env cwl-runner

baseCommand:
- krocus_database_downloader
class: CommandLineTool
cwlVersion: v1.0
id: krocus_database_downloader
inputs:
- doc: 'List all available species (default: False)'
  id: list_species
  inputBinding:
    prefix: --list_species
  type: boolean
- doc: 'Species to download (default: None)'
  id: species
  inputBinding:
    prefix: --species
  type: string
- doc: 'Output directory (default: mlst_files)'
  id: output_directory
  inputBinding:
    prefix: --output_directory
  type: string
- doc: 'Turn on debugging (default: False)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
