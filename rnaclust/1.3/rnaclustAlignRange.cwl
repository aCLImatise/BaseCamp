#!/usr/bin/env cwl-runner

baseCommand:
- rnaclustAlignRange.pl
class: CommandLineTool
cwlVersion: v1.0
id: rnaclustalignrange.pl
inputs:
- doc: <i-j>                          specifies pairwise alignments which will be
    calculated (e.g. --range 1-100) (required)
  id: range
  inputBinding:
    prefix: --range
  type: boolean
- doc: <dir>                          target directory (required)
  id: tgt_dir
  inputBinding:
    prefix: --tgtdir
  type: boolean
- doc: <dir>                          Directory containing the dotplots (required)s
  id: dp_dir
  inputBinding:
    prefix: --dpdir
  type: boolean
- doc: '<n>                            Number of CPUs available on your machine. Calls
    to locarna will  be distributed equally between those CPUs. (default: 1)  (optional)'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: boolean
- doc: <"locarna options">          options passed directly to locarna (must be given
    as one string) (optional)
  id: loca_rna_opts
  inputBinding:
    prefix: --locarna-opts
  type: boolean
- doc: 'path to locarna (default: ) (optional)'
  id: loca_rna_path
  inputBinding:
    prefix: --locarna-path
  type: File
- doc: full documentation (optional)
  id: man
  inputBinding:
    prefix: --man
  type: boolean
