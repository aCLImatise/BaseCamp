class: CommandLineTool
id: socru_shrink_database.cwl
inputs:
- id: in_min_fragment_size
  doc: 'Minimum fragment size in bases (default: 100000)'
  type: long
  inputBinding:
    prefix: --min_fragment_size
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
- id: in_blast_results
  doc: "Blast results file from running socru -b xxx against\nmultiple assemblies"
  type: string
  inputBinding:
    position: 0
- id: in_input_database
  doc: Directory containing database to shrink
  type: string
  inputBinding:
    position: 1
- id: in_output_database
  doc: Output directory for new database, it must not already
  type: string
  inputBinding:
    position: 2
- id: in_exist
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- socru_shrink_database
