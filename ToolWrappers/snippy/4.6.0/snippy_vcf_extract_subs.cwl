class: CommandLineTool
id: snippy_vcf_extract_subs.cwl
inputs:
- id: in_debug
  doc: +        Output verbose debug info (default '0').
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_ref
  doc: FASTA reference (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: in_haploid
  doc: "!      Convert to haploid genotypes (default '0')."
  type: boolean
  inputBinding:
    prefix: --haploid
- id: in_info_tags
  doc: Keep these INFO tags (default 'TYPE,DP,RO,AO,AF').
  type: string
  inputBinding:
    prefix: --info-tags
- id: in_format_tags
  doc: Keep these FORMAT tags (default 'GT,DP,RO,AO,QR,QA').
  type: string
  inputBinding:
    prefix: --format-tags
- id: in_filter
  doc: Set FILTER to this (default '').
  type: string
  inputBinding:
    prefix: --filter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snippy-vcf_extract_subs
