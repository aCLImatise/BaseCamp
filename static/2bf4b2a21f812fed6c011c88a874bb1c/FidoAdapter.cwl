class: CommandLineTool
id: FidoAdapter.cwl
inputs:
- id: in_in
  doc: "*                 Input: identification results (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                Output: identification results with scored/grouped proteins\
    \ (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_fido_executable
  doc: '*    Path to the Fido executable to use; may be empty if the executable is
    globally available.'
  type: File
  inputBinding:
    prefix: -fido_executable
- id: in_fido_cp_executable
  doc: '*  Path to the FidoChooseParameters executable to use; may be empty if the
    executable is globally available.'
  type: File
  inputBinding:
    prefix: -fidocp_executable
- id: in_separate_runs
  doc: Process multiple protein identification runs in the input separately, don't
    merge them. Merging results in loss of descriptive information of the single protein
    identification runs.
  type: boolean
  inputBinding:
    prefix: -separate_runs
- id: in_greedy_group_resolution
  doc: Post-process Fido output with greedy resolution of shared peptides based on
    the protein probabilities. Also adds the resolved ambiguity groups to output.
  type: boolean
  inputBinding:
    prefix: -greedy_group_resolution
- id: in_no_cleanup
  doc: Omit clean-up of peptide sequences (removal of non-letter characters, replacement
    of I with L)
  type: boolean
  inputBinding:
    prefix: -no_cleanup
- id: in_all_psms
  doc: Consider all PSMs of each peptide, instead of only the best one
  type: boolean
  inputBinding:
    prefix: -all_PSMs
- id: in_group_level
  doc: Perform inference on protein group level (instead of individual protein level).
    This will lead to higher probabilities for (bigger) protein groups.
  type: boolean
  inputBinding:
    prefix: -group_level
- id: in_log_two_states
  doc: "Binary logarithm of the max. number of connected states in a subgraph. For\
    \ a value N, subgraphs that are bigger than 2^N will be split up, sacrificing\
    \ accuracy for runtime. '0' uses the default (18). (default: '0' min: '0')"
  type: long
  inputBinding:
    prefix: -log2_states
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FidoAdapter
