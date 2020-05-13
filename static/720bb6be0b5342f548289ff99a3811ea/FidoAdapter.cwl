class: CommandLineTool
id: FidoAdapter.cwl
inputs:
- id: in
  doc: "*                 Input: identification results (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                Output: identification results with scored/grouped proteins\
    \ (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: fido_executable
  doc: '*    The Fido executable. Provide a full or relative path, or make sure it
    can be found in your PATH environment.'
  type: File
  inputBinding:
    prefix: -fido_executable
- id: fido_cp_executable
  doc: '*  The FidoChooseParameters executable. Provide a full or relative path, or
    make sure it can be found in your PATH environment.'
  type: File
  inputBinding:
    prefix: -fidocp_executable
- id: separate_runs
  doc: Process multiple protein identification runs in the input separately, don't
    merge them. Merging results in loss of descriptive information of the single protein
    identification runs .
  type: boolean
  inputBinding:
    prefix: -separate_runs
- id: greedy_group_resolution
  doc: Post-process Fido output with greedy resolution of shared peptides based on
    the protein probabilities. Also adds the resolved ambiguity groups to output.
  type: boolean
  inputBinding:
    prefix: -greedy_group_resolution
- id: no_cleanup
  doc: Omit clean-up of peptide sequences (removal of non-letter characters, replacement
    of I with L)
  type: boolean
  inputBinding:
    prefix: -no_cleanup
- id: all_psms
  doc: Consider all PSMs of each peptide, instead of only the best one
  type: boolean
  inputBinding:
    prefix: -all_PSMs
- id: group_level
  doc: Perform inference on protein group level (instead of individual protein level).
    This will lead to higher probabilities for (bigger) protein groups.
  type: boolean
  inputBinding:
    prefix: -group_level
- id: log2_states
  doc: "Binary logarithm of the max. number of connected states in a subgraph. For\
    \ a value N, subgraphs that are bigger than 2^N will be split up, sacrificing\
    \ accuracy for runtime. '0'  uses the default (18). (default: '0' min: '0')"
  type: string
  inputBinding:
    prefix: -log2_states
- id: prob
  doc: ":protein <value>       Protein prior probability ('gamma' parameter) (default:\
    \ '0.0' min: '0.0')"
  type: boolean
  inputBinding:
    prefix: -prob
- id: prob
  doc: ":peptide <value>       Peptide emission probability ('alpha' parameter) (default:\
    \ '0.0' min: '0.0')"
  type: boolean
  inputBinding:
    prefix: -prob
- id: prob
  doc: ":spurious <value>      Spurious peptide identification probability ('beta'\
    \ parameter) (default: '0.0' min: '0.0')"
  type: boolean
  inputBinding:
    prefix: -prob
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- FidoAdapter
