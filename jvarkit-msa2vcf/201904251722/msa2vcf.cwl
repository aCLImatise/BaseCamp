#!/usr/bin/env cwl-runner

baseCommand:
- msa2vcf.py
class: CommandLineTool
cwlVersion: v1.0
id: msa2vcf.py
inputs:
- doc: 'reference name used for the CHROM column. Optional Default: chrUn'
  id: ref
  inputBinding:
    prefix: --REF
  type: boolean
- doc: 'print all sites Default: false'
  id: all_sites
  inputBinding:
    prefix: --allsites
  type: boolean
- doc: ruse this sequence as CONSENSUS
  id: consensus
  inputBinding:
    prefix: --consensus
  type: boolean
- doc: save computed fasta sequence in this file.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: boolean
- doc: 'haploid output Default: false'
  id: haploid
  inputBinding:
    prefix: --haploid
  type: boolean
- doc: What kind of help. One of [usage,markdown,xml].
  id: help_format
  inputBinding:
    prefix: --helpFormat
  type: boolean
- doc: 'Output file. Optional . Default: stdout'
  id: output
  inputBinding:
    prefix: --output
  type: boolean
