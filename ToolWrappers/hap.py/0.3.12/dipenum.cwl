class: CommandLineTool
id: dipenum.cwl
inputs:
- id: in_input_file
  doc: "The input VCF/BCF file (use file:sample to specify\na sample)"
  type: File
  inputBinding:
    prefix: --input-file
- id: in_output
  doc: Write a file with all possible haplotypes.
  type: File
  inputBinding:
    prefix: --output
- id: in_arg_location_subset
  doc: '[ --location ] arg      The location / subset.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg     The reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_max_n_haplotypes
  doc: Maximum number of haplotypes to enumerate.
  type: long
  inputBinding:
    prefix: --max-n-haplotypes
- id: in_arg_apply_filters
  doc: '[ --apply-filters ] arg Apply filters in VCF (default to 1)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_preprocess_variants
  doc: '[ --preprocess ] arg    Preprocess variants'
  type: boolean
  inputBinding:
    prefix: -P
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dipenum
