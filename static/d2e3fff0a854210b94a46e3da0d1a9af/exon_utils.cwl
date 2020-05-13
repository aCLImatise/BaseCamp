class: CommandLineTool
id: exon_utils.cwl
inputs:
- id: get_const_exons
  doc: Get constitutive exons from an input GFF file.
  type: string
  inputBinding:
    prefix: --get-const-exons
- id: min_exon_size
  doc: Minimum size of constitutive exon (in nucleotides) that should be used in the
    computation. Default is 20 bp.
  type: long
  inputBinding:
    prefix: --min-exon-size
- id: output_dir
  doc: Output directory.
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- exon_utils
