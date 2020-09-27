class: CommandLineTool
id: phenix.py_filter_vcf.cwl
inputs:
- id: in_vcf
  doc: VCF file to (re)filter.
  type: File
  inputBinding:
    prefix: --vcf
- id: in_filters
  doc: "Filter(s) to apply as key:threshold pairs, separated\nby comma. Recommendations:\
    \ GATK:\nmq_score:30,min_depth:10,ad_ratio:0.9 Mpileup:\nmq_score:30,min_depth:10,dp4_ratio:0.9"
  type: double
  inputBinding:
    prefix: --filters
- id: in_config
  doc: "Config with filters in YAML format.\nE.g.filters:-key:value"
  type: string
  inputBinding:
    prefix: --config
- id: in_output
  doc: Location for filtered VCF to be written.
  type: string
  inputBinding:
    prefix: --output
- id: in_reference
  doc: "mpileup version <= 1.3 do not output all positions.\nThis is required to fix\
    \ rfrence base in VCF."
  type: double
  inputBinding:
    prefix: --reference
- id: in_only_good
  doc: "Write only variants that PASS all filters (default all\nvariants are written).\n"
  type: boolean
  inputBinding:
    prefix: --only-good
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phenix.py
- filter_vcf
