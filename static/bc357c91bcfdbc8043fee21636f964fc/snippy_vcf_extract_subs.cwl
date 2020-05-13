class: CommandLineTool
id: snippy_vcf_extract_subs.cwl
inputs:
- id: debug
  doc: +        Output verbose debug info (default '0').
  type: boolean
  inputBinding:
    prefix: --debug
- id: ref
  doc: FASTA reference (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: haploid
  doc: "!      Convert to haploid genotypes (default '0')."
  type: boolean
  inputBinding:
    prefix: --haploid
- id: info_tags
  doc: Keep these INFO tags (default 'TYPE,DP,RO,AO,AF').
  type: string
  inputBinding:
    prefix: --info-tags
- id: format_tags
  doc: Keep these FORMAT tags (default 'GT,DP,RO,AO,QR,QA').
  type: string
  inputBinding:
    prefix: --format-tags
- id: filter
  doc: Set FILTER to this (default '').
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- snippy-vcf_extract_subs
