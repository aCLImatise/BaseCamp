class: CommandLineTool
id: snippy_vcf_report.cwl
inputs:
- id: debug
  doc: "!        Output verbose debug info (default '0')."
  type: boolean
  inputBinding:
    prefix: --debug
- id: auto
  doc: "!         Autoset --vcf/bam/ref to snippy names (default '0')."
  type: boolean
  inputBinding:
    prefix: --auto
- id: cpus
  doc: Number of parallel threads to use (default '1').
  type: string
  inputBinding:
    prefix: --cpus
- id: vcf
  doc: VCF input file (raw) (default '').
  type: string
  inputBinding:
    prefix: --vcf
- id: bam
  doc: BAM alignments (indexed) (default '').
  type: string
  inputBinding:
    prefix: --bam
- id: ref
  doc: FASTA reference (indexed) (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: html
  doc: "!         Write a HTML report instead of TXT (default '0')."
  type: boolean
  inputBinding:
    prefix: --html
outputs: []
cwlVersion: v1.1
baseCommand:
- snippy-vcf_report
