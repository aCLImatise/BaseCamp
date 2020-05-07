class: CommandLineTool
id: snippy_vcf_to_tab.cwl
inputs:
- id: debug
  doc: "!        Output verbose debug info (default '0')."
  type: boolean
  inputBinding:
    prefix: --debug
- id: auto
  doc: "!         Autoset --vcf/ref/gff to default Snippy names (default '0')."
  type: boolean
  inputBinding:
    prefix: --auto
- id: vcf
  doc: VCF input file (default '').
  type: string
  inputBinding:
    prefix: --vcf
- id: ref
  doc: FASTA reference sequence (default '').
  type: string
  inputBinding:
    prefix: --ref
- id: gff
  doc: GFF reference features (default '').
  type: string
  inputBinding:
    prefix: --gff
outputs: []
cwlVersion: v1.1
baseCommand:
- snippy-vcf_to_tab
