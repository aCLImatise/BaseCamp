#!/usr/bin/env cwl-runner

baseCommand:
- consolidate_vcfs.pl
class: CommandLineTool
cwlVersion: v1.0
id: consolidate_vcfs.pl
inputs:
- doc: 0.75 --bcftools-path /opt/bcftools/bcftools
  id: snv_abundance_ratio
  inputBinding:
    prefix: --snv-abundance-ratio
  type: boolean
