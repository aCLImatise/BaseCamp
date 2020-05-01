#!/usr/bin/env cwl-runner

baseCommand:
- biopet-extractadaptersfastqc
class: CommandLineTool
cwlVersion: v1.0
id: biopet-extractadaptersfastqc
inputs:
- doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  id: log_level
  inputBinding:
    prefix: --log_level
  type: string
- doc: Fastqc data file (i.e., fastqc_data.txt file in the FastQC output)
  id: input_file
  inputBinding:
    prefix: --inputFile
  type: string
- doc: Output file for adapters, if not supplied output will go to stdout
  id: adapter_output_file
  inputBinding:
    prefix: --adapterOutputFile
  type: string
- doc: Output file for adapters, if not supplied output will go to stdout
  id: contam_soutputfile
  inputBinding:
    prefix: --contamsOutputFile
  type: string
- doc: If this is set only the adapters block is used, other wise contaminations is
    also used
  id: skip_contam_s
  inputBinding:
    prefix: --skipContams
  type: boolean
- doc: This file should contain the known contaminations from fastqc
  id: known_contam_file
  inputBinding:
    prefix: --knownContamFile
  type: string
- doc: This file should contain the known adapters from fastqc
  id: known_adapter_file
  inputBinding:
    prefix: --knownAdapterFile
  type: string
- doc: The fraction of the adapters in a read should be above this fraction, default
    is 0.001
  id: adapter_cut_off
  inputBinding:
    prefix: --adapterCutoff
  type: string
- doc: Output in fasta format, default only sequences
  id: output_as_fast_a
  inputBinding:
    prefix: --outputAsFasta
  type: boolean
