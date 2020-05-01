#!/usr/bin/env cwl-runner

baseCommand:
- tsvToVcf.pl
class: CommandLineTool
cwlVersion: v1.0
id: tsvtovcf.pl
inputs:
- doc: directory containing vcf files from freebayes
  id: v
  inputBinding:
    prefix: -v
  type: string
- doc: directory the new vcf files will be output to
  id: d
  inputBinding:
    prefix: -d
  type: string
