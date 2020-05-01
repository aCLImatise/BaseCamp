#!/usr/bin/env cwl-runner

baseCommand:
- biopet-validateannotation
class: CommandLineTool
cwlVersion: v1.0
id: biopet-validateannotation
inputs:
- doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  id: log_level
  inputBinding:
    prefix: --log_level
  type: string
- doc: Refflat file to check
  id: ref_flat_file
  inputBinding:
    prefix: --refflatFile
  type: File
- doc: Gtf files to check
  id: gtf_file
  inputBinding:
    prefix: --gtfFile
  type: File
- doc: Reference fasta to check vcf file against
  id: reference
  inputBinding:
    prefix: --reference
  type: File
- doc: Do not fail on error. The tool will still exit when encountering an error,
    but will do so with exit code 0
  id: disable_fail
  inputBinding:
    prefix: --disableFail
  type: boolean
