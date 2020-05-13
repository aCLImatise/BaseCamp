class: CommandLineTool
id: rtg_vcfannotate.cwl
inputs:
- id: bed_regions
  doc: if set, only read VCF records that overlap the ranges contained in the specified
    BED file
  type: File
  inputBinding:
    prefix: --bed-regions
- id: input
  doc: VCF file containing variants to annotate. Use '-' to read from standard input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: output VCF file name. Use '-' to write to standard output
  type: File
  inputBinding:
    prefix: --output
- id: region
  doc: if set, only read VCF records within the specified range. The format is one
    of <sequence_name>, <sequence_name>:<start>-<end>, <sequence_name>:<pos>+<length>
    or <sequence_name>:<pos>~<padding>
  type: string
  inputBinding:
    prefix: --region
- id: annotation
  doc: add computed annotation to VCF records. Allowed values are [AC, AN, EP, GQD,
    IC, LAL, MEANQAD, NAA, PD, QA, QD, RA, SCONT, VAF, VAF1, ZY]. May be specified
    0 or more times, or as a comma separated list
  type: string
  inputBinding:
    prefix: --annotation
- id: bed_ids
  doc: add variant IDs from BED file. May be specified 0 or more times
  type: File
  inputBinding:
    prefix: --bed-ids
- id: bed_info
  doc: add INFO annotations from BED file. May be specified 0 or more times
  type: File
  inputBinding:
    prefix: --bed-info
- id: fill_an_ac
  doc: add or update the AN and AC INFO fields
  type: boolean
  inputBinding:
    prefix: --fill-an-ac
- id: info_description
  doc: if the BED INFO field is not already declared, use this description in the
    header (Default is Annotation)
  type: string
  inputBinding:
    prefix: --info-description
- id: info_id
  doc: the INFO ID for BED INFO annotations (Default is ANN)
  type: string
  inputBinding:
    prefix: --info-id
- id: relabel
  doc: relabel samples according to "old-name new-name" pairs in specified file
  type: File
  inputBinding:
    prefix: --relabel
- id: vcf_ids
  doc: add variant IDs from VCF file. May be specified 0 or more times
  type: File
  inputBinding:
    prefix: --vcf-ids
- id: add_header
  doc: '|FILE  file containing VCF header lines to add, or a literal header line.
    May be specified 0 or more times'
  type: string
  inputBinding:
    prefix: --add-header
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: no_header
  doc: prevent VCF header from being written
  type: boolean
  inputBinding:
    prefix: --no-header
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- vcfannotate
