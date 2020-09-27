class: CommandLineTool
id: ontogetobsolete.cwl
inputs:
- id: in_subclasses
  doc: "boolean    [N] Extend the query matches to include all\nterms which are specialisations\n\
    (sub-classes) of the matched terms."
  type: boolean
  inputBinding:
    prefix: -subclasses
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ontogetobsolete
