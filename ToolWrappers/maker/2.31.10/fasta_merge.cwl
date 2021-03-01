class: CommandLineTool
id: fasta_merge.cwl
inputs:
- id: in_location_index_log
  doc: location of the MAKER datastore index log.
  type: string?
  inputBinding:
    prefix: -d
- id: in_base_name_output
  doc: base name for the output files.
  type: string?
  inputBinding:
    prefix: -o
- id: in_optional_list_process
  doc: "optional list of files to process along with or instead of the\ndatastore.\n"
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta_merge
