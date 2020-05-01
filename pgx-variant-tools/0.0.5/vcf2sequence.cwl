#!/usr/bin/env cwl-runner

baseCommand:
- vcf2sequence
class: CommandLineTool
cwlVersion: v1.0
id: vcf2sequence
inputs:
- doc: Path to input VCF  [required]
  id: vcf
  inputBinding:
    prefix: --vcf
  type: File
- doc: Sample to consider. If not given, take fist sample in VCF
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: Region string of format chr:start-end
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: Path to BED file containing regions
  id: region_file
  inputBinding:
    prefix: --region-file
  type: File
