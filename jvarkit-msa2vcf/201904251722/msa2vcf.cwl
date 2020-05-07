class: CommandLineTool
id: msa2vcf.py.cwl
inputs:
- id: ref
  doc: 'reference name used for the CHROM column. Optional Default: chrUn'
  type: boolean
  inputBinding:
    prefix: --REF
- id: all_sites
  doc: 'print all sites Default: false'
  type: boolean
  inputBinding:
    prefix: --allsites
- id: consensus
  doc: ruse this sequence as CONSENSUS
  type: boolean
  inputBinding:
    prefix: --consensus
- id: fast_a
  doc: save computed fasta sequence in this file.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: haploid
  doc: 'haploid output Default: false'
  type: boolean
  inputBinding:
    prefix: --haploid
- id: help_format
  doc: What kind of help. One of [usage,markdown,xml].
  type: boolean
  inputBinding:
    prefix: --helpFormat
- id: output
  doc: 'Output file. Optional . Default: stdout'
  type: boolean
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- msa2vcf.py
