class: CommandLineTool
id: falconc_bam_tags_enrich.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__outputfn_string
  doc: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)"
  type: File
  inputBinding:
    prefix: -o
- id: in__inputfn_string
  doc: "=, --input-fn=   string  REQUIRED  Bam or Sam filename (based on its\nextension),\
    \ or '-'\n"
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfn_string
  doc: "=, --output-fn=  string  REQUIRED  Bam or Sam filename (based on its\nextension)"
  type: File
  outputBinding:
    glob: $(inputs.in__outputfn_string)
cwlVersion: v1.1
baseCommand:
- falconc
- bam-tags-enrich
