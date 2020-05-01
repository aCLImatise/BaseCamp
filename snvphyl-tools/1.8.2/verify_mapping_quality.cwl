#!/usr/bin/env cwl-runner

baseCommand:
- verify_mapping_quality.pl
class: CommandLineTool
cwlVersion: v1.0
id: verify_mapping_quality.pl
inputs:
- doc: Path to write human readable report
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: Path to write list of strain(s) one per line for filter File collection tool
    or vcf2snvalignment itself
  id: out_strains
  inputBinding:
    prefix: --out_strains
  type: boolean
