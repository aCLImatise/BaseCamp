class: CommandLineTool
id: rtg_vcfannotate.cwl
inputs:
- id: in_bed_regions
  doc: "if set, only read VCF records that overlap the\nranges contained in the specified\
    \ BED file"
  type: File
  inputBinding:
    prefix: --bed-regions
- id: in_input
  doc: "VCF file containing variants to annotate. Use\n'-' to read from standard input"
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "output VCF file name. Use '-' to write to\nstandard output"
  type: File
  inputBinding:
    prefix: --output
- id: in_region
  doc: "if set, only read VCF records within the\nspecified range. The format is one\
    \ of\n<sequence_name>, <sequence_name>:<start>-<end>,\n<sequence_name>:<pos>+<length>\
    \ or\n<sequence_name>:<pos>~<padding>"
  type: long
  inputBinding:
    prefix: --region
- id: in_annotation
  doc: "add computed annotation to VCF records. Allowed\nvalues are [AC, AN, EP, GQD,\
    \ IC, LAL, MEANQAD,\nNAA, PD, QA, QD, RA, SCONT, VAF, VAF1, ZY]. May\nbe specified\
    \ 0 or more times, or as a comma\nseparated list"
  type: long
  inputBinding:
    prefix: --annotation
- id: in_bed_ids
  doc: "add variant IDs from BED file. May be specified\n0 or more times"
  type: File
  inputBinding:
    prefix: --bed-ids
- id: in_bed_info
  doc: "add INFO annotations from BED file. May be\nspecified 0 or more times"
  type: File
  inputBinding:
    prefix: --bed-info
- id: in_fill_an_ac
  doc: add or update the AN and AC INFO fields
  type: boolean
  inputBinding:
    prefix: --fill-an-ac
- id: in_info_description
  doc: "if the BED INFO field is not already declared,\nuse this description in the\
    \ header (Default is\nAnnotation)"
  type: string
  inputBinding:
    prefix: --info-description
- id: in_info_id
  doc: "the INFO ID for BED INFO annotations (Default\nis ANN)"
  type: string
  inputBinding:
    prefix: --info-id
- id: in_relabel
  doc: "relabel samples according to \"old-name\nnew-name\" pairs in specified file"
  type: File
  inputBinding:
    prefix: --relabel
- id: in_vcf_ids
  doc: "add variant IDs from VCF file. May be specified\n0 or more times"
  type: File
  inputBinding:
    prefix: --vcf-ids
- id: in_add_header
  doc: "|FILE  file containing VCF header lines to add, or a\nliteral header line.\
    \ May be specified 0 or more\ntimes"
  type: File
  inputBinding:
    prefix: --add-header
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: in_no_header
  doc: prevent VCF header from being written
  type: boolean
  inputBinding:
    prefix: --no-header
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output VCF file name. Use '-' to write to\nstandard output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- rtg
- vcfannotate
