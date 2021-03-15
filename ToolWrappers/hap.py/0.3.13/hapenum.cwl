class: CommandLineTool
id: hapenum.cwl
inputs:
- id: in_input_file
  doc: "The input VCF/BCF file (use file:sample to specify\na sample)"
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_dot
  doc: Write a dot file with the reference graph.
  type: File?
  inputBinding:
    prefix: --output-dot
- id: in_output_fast_a
  doc: Write a fasta file with all possible haplotypes.
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_arg_location_subset
  doc: '[ --location ] arg      The location / subset.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg     The reference fasta file.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_apply_filtering
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_preprocess_variants
  doc: '[ --preprocess ] arg    Preprocess variants'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_max_n_haplotypes
  doc: Maximum number of haplotypes to enumerate.
  type: long?
  inputBinding:
    prefix: --max-n-haplotypes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- hapenum
