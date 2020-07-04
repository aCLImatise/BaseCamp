class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/socru_shrink_database.cwl
inputs:
- id: min_fragment_size
  doc: 'Minimum fragment size in bases (default: 100000)'
  type: long
  inputBinding:
    prefix: --min_fragment_size
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
- id: blast_results
  doc: Blast results file from running socru -b xxx against multiple assemblies
  type: string
  inputBinding:
    position: 0
- id: input_database
  doc: Directory containing database to shrink
  type: string
  inputBinding:
    position: 1
- id: output_database
  doc: Output directory for new database, it must not already exist
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- socru_shrink_database
