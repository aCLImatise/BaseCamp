#!/usr/bin/env cwl-runner

baseCommand:
- mpa
class: CommandLineTool
cwlVersion: v1.0
id: mpa
inputs:
- doc: 'The path to the MPA installation folder. [Default: /tmp/tmp6z3s7q_f/bin]'
  id: mpa_directory
  inputBinding:
    prefix: --mpa-directory
  type: string
- doc: 'The logger level. [Default: INFO]'
  id: logging_level
  inputBinding:
    prefix: --logging-level
  type: string
- doc: 'The vcf file to annotate (format: VCF). This vcf must be annotate with annovar.'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'The output vcf file with annotation (format : VCF)'
  id: output
  inputBinding:
    prefix: --output
  type: string
