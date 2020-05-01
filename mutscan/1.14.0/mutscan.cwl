#!/usr/bin/env cwl-runner

baseCommand:
- mutscan
class: CommandLineTool
cwlVersion: v1.0
id: mutscan
inputs:
- doc: simplified mode uses less RAM but reports less information. This option can
    be auto/on/off, by default it's auto, which means automatically enabled when processing
    large FASTQ with large VCF. (string [=auto])
  id: simplified
  inputBinding:
    prefix: --simplified
  type: boolean
- doc: enable verbose mode, more information will be output in STDERR
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
