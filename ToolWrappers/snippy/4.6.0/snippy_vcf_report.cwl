class: CommandLineTool
id: snippy_vcf_report.cwl
inputs:
- id: in_debug
  doc: "!        Output verbose debug info (default '0')."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_auto
  doc: "!         Autoset --vcf/bam/ref to snippy names (default '0')."
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_cpus
  doc: Number of parallel threads to use (default '1').
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_vcf
  doc: VCF input file (raw) (default '').
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_bam
  doc: BAM alignments (indexed) (default '').
  type: string?
  inputBinding:
    prefix: --bam
- id: in_ref
  doc: FASTA reference (indexed) (default '').
  type: string?
  inputBinding:
    prefix: --ref
- id: in_html
  doc: "!         Write a HTML report instead of TXT (default '0')."
  type: boolean?
  inputBinding:
    prefix: --html
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snippy-vcf_report
