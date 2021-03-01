class: CommandLineTool
id: snippy_vcf_to_tab.cwl
inputs:
- id: in_debug
  doc: "!        Output verbose debug info (default '0')."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_auto
  doc: "!         Autoset --vcf/ref/gff to default Snippy names (default '0')."
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_vcf
  doc: VCF input file (default '').
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_ref
  doc: FASTA reference sequence (default '').
  type: string?
  inputBinding:
    prefix: --ref
- id: in_gff
  doc: GFF reference features (default '').
  type: string?
  inputBinding:
    prefix: --gff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snippy-vcf_to_tab
