class: CommandLineTool
id: ../../../SVrefine.cwl
inputs:
- id: sv_regions
  doc: Specify the path to which to write a BED file containing the widened coordinates
    of structural variants. These are the same coordinates reported in the "WIDENEDREF"
    tag in the variant VCF. (Optional).
  type: File
  inputBinding:
    prefix: --svregions
- id: includes_eqs
  doc: Write sequences from the reference FASTA file into the "REF" and "ALT" fields
    of the VCF.
  type: boolean
  inputBinding:
    prefix: --includeseqs
- id: verbose
  doc: Write verbose output, debugging information, etc. to the log file.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: bam
  doc: ''
  type: string
  inputBinding:
    prefix: --bam
- id: regions
  doc: ''
  type: File
  inputBinding:
    prefix: --regions
- id: ref_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: --ref_fasta
- id: query_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: --query_fasta
- id: out_vcf
  doc: ''
  type: File
  inputBinding:
    prefix: --outvcf
- id: out_ref
  doc: ''
  type: File
  inputBinding:
    prefix: --outref
- id: no_cov
  doc: ''
  type: File
  inputBinding:
    prefix: --nocov
outputs: []
cwlVersion: v1.1
baseCommand:
- SVrefine
