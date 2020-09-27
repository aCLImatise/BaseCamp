class: CommandLineTool
id: rtg_vcfsplit.cwl
inputs:
- id: in_bed_regions
  doc: "if set, only read VCF records that overlap\nthe ranges contained in the specified\
    \ BED\nfile"
  type: File
  inputBinding:
    prefix: --bed-regions
- id: in_input_vcf_read
  doc: the input VCF, or '-' to read from standard
  type: File
  inputBinding:
    prefix: --input
- id: in_region
  doc: "if set, only read VCF records within the\nspecified range. The format is one\
    \ of\n<sequence_name>,\n<sequence_name>:<start>-<end>,\n<sequence_name>:<pos>+<length>\
    \ or\n<sequence_name>:<pos>~<padding>"
  type: long
  inputBinding:
    prefix: --region
- id: in_keep_ref
  doc: keep records where the sample is reference
  type: boolean
  inputBinding:
    prefix: --keep-ref
- id: in_keep_sample
  doc: "|FILE   file containing sample IDs to select, or a\nliteral sample name. May\
    \ be specified 0 or\nmore times, or as a comma separated list"
  type: File
  inputBinding:
    prefix: --keep-sample
- id: in_remove_sample
  doc: "|FILE file containing sample IDs to ignore, or a\nliteral sample name. May\
    \ be specified 0 or\nmore times, or as a comma separated list"
  type: File
  inputBinding:
    prefix: --remove-sample
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: in__outputdir_directory
  doc: -o, --output=DIR                directory for output
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rtg
- vcfsplit
