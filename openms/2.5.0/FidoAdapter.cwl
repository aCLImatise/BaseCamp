#!/usr/bin/env cwl-runner

baseCommand:
- FidoAdapter
class: CommandLineTool
cwlVersion: v1.0
id: fidoadapter
inputs:
- doc: "*                 Input: identification results (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                Output: identification results with scored/grouped proteins\
    \ (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: '*    The Fido executable. Provide a full or relative path, or make sure it
    can be found in your PATH environment.'
  id: fido_executable
  inputBinding:
    prefix: -fido_executable
  type: File
- doc: '*  The FidoChooseParameters executable. Provide a full or relative path, or
    make sure it can be found in your PATH environment.'
  id: fido_cp_executable
  inputBinding:
    prefix: -fidocp_executable
  type: File
- doc: Process multiple protein identification runs in the input separately, don't
    merge them. Merging results in loss of descriptive information of the single protein
    identification runs .
  id: separate_runs
  inputBinding:
    prefix: -separate_runs
  type: boolean
- doc: Post-process Fido output with greedy resolution of shared peptides based on
    the protein probabilities. Also adds the resolved ambiguity groups to output.
  id: greedy_group_resolution
  inputBinding:
    prefix: -greedy_group_resolution
  type: boolean
- doc: Omit clean-up of peptide sequences (removal of non-letter characters, replacement
    of I with L)
  id: no_cleanup
  inputBinding:
    prefix: -no_cleanup
  type: boolean
- doc: Consider all PSMs of each peptide, instead of only the best one
  id: all_psms
  inputBinding:
    prefix: -all_PSMs
  type: boolean
- doc: Perform inference on protein group level (instead of individual protein level).
    This will lead to higher probabilities for (bigger) protein groups.
  id: group_level
  inputBinding:
    prefix: -group_level
  type: boolean
- doc: "Binary logarithm of the max. number of connected states in a subgraph. For\
    \ a value N, subgraphs that are bigger than 2^N will be split up, sacrificing\
    \ accuracy for runtime. '0'  uses the default (18). (default: '0' min: '0')"
  id: log2_states
  inputBinding:
    prefix: -log2_states
  type: string
- doc: ":protein <value>       Protein prior probability ('gamma' parameter) (default:\
    \ '0.0' min: '0.0')"
  id: prob
  inputBinding:
    prefix: -prob
  type: boolean
- doc: ":peptide <value>       Peptide emission probability ('alpha' parameter) (default:\
    \ '0.0' min: '0.0')"
  id: prob
  inputBinding:
    prefix: -prob
  type: boolean
- doc: ":spurious <value>      Spurious peptide identification probability ('beta'\
    \ parameter) (default: '0.0' min: '0.0')"
  id: prob
  inputBinding:
    prefix: -prob
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
