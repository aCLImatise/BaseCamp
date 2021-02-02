class: CommandLineTool
id: falconc_stats_preassembly.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__rawreadsrdbfn_string
  doc: =, --rawreads-rdb-fn=  string  REQUIRED  Path to the raw reads RaptorDB.
  type: boolean
  inputBinding:
    prefix: -r
- id: in__preadsrdbfn_string
  doc: "=, --preads-rdb-fn=    string  REQUIRED  Path to the preads (error-corrected\n\
    reads) RaptorDB."
  type: boolean
  inputBinding:
    prefix: -p
- id: in__genomelength_int
  doc: =, --genome-length=    int32   REQUIRED  Length of the genome.
  type: boolean
  inputBinding:
    prefix: -g
- id: in__cutofflength_int
  doc: =, --cutoff-length=    int32   REQUIRED  Length cutoff used for assembly.
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- stats-preassembly
