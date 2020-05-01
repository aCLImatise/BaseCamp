#!/usr/bin/env cwl-runner

baseCommand:
- hp_extract_pairwise
class: CommandLineTool
cwlVersion: v1.0
id: hp_extract_pairwise
inputs:
- doc: JSON file describing alignment (output of pairwise_align stage)
  id: align_json
  inputBinding:
    prefix: --align_json
  type: string
- doc: Output file. Default is stdout
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: 'Format for output (default: nuc_fa)'
  id: out_fmt
  inputBinding:
    prefix: --outfmt
  type: string
- doc: Reference region. String format is ref:start-stop. For example, the region
    string to extract pol when aligned to HXB2 is HIV_B.K03455.HXB2:2085-5096
  id: ref_reg
  inputBinding:
    prefix: --refreg
  type: string
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
