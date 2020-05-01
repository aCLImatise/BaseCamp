#!/usr/bin/env cwl-runner

baseCommand:
- exploc_p
class: CommandLineTool
cwlVersion: v1.0
id: exploc_p
inputs:
- doc: full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: parameters for ExpaRNA-P
  id: exp_a_rnap_params
  inputBinding:
    prefix: --exparnap-params
  type: boolean
- doc: parameters for LocARNA
  id: loca_rna_params
  inputBinding:
    prefix: --locarna-params
  type: boolean
- doc: path to output folder
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: output individual runtimes
  id: output_time
  inputBinding:
    prefix: --output-time
  type: boolean
- doc: prints full documentation and exits.
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: shows in addition the output of ExpaRNA-P and LocARNA.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: parameters for ExpaRNA-P (def="").
  id: exp_a_rnap_params
  inputBinding:
    prefix: --exparnap-params
  type: boolean
- doc: parameters for LocARNA (def="").
  id: loca_rna_params
  inputBinding:
    prefix: --locarna-params
  type: boolean
- doc: path to output folder where intermediate results are stored.
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: print individual times for Preprocessing, ExpaRNA-P and LocARNA.
  id: output_time
  inputBinding:
    prefix: --output-time
  type: boolean
