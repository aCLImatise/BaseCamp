#!/usr/bin/env cwl-runner

baseCommand:
- create_phylowgs_inputs.py
class: CommandLineTool
cwlVersion: v1.0
id: create_phylowgs_inputs.py
inputs:
- doc: Path to VCF file for each sample. Specified as <sample>=<VCF path>.
  id: vcf_files
  inputBinding:
    position: 0
  type: string
