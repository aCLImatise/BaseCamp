class: CommandLineTool
id: filter_rep_set.py.cwl
inputs:
- id: in_rep_set_fn
  doc: The set of representative sequences.
  type: string?
  inputBinding:
    prefix: --rep_set_fn
- id: in_unique_otus_fn
  doc: The condensed assigned taxonomy file.
  type: File?
  inputBinding:
    prefix: --unique_otus_fn
- id: in_output_filtered_rep_set_fn
  doc: "The filtered representative set. By default outputs to\ncondensed_rep_set.fna"
  type: string?
  inputBinding:
    prefix: --output_filtered_rep_set_fn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_rep_set.py
