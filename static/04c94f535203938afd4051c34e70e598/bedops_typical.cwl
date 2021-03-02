class: CommandLineTool
id: bedops_typical.cwl
inputs:
- id: in_chrom
  doc: Jump to and process data for given <chromosome> only.
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_ec
  doc: Error check input files (slower).
  type: boolean?
  inputBinding:
    prefix: --ec
- id: in_header
  doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_help
  doc: "<operation>   Detailed help on <operation>.\nAn example is --help-c or --help-complement"
  type: boolean?
  inputBinding:
    prefix: --help-
- id: in_complement
  doc: '[-L] File1 [File]*'
  type: boolean?
  inputBinding:
    prefix: --complement
- id: in_difference
  doc: File2 [File]*
  type: File?
  inputBinding:
    prefix: --difference
- id: in_element_of
  doc: "[bp | percentage] ReferenceFile File2 [File]*\nby default, -e 100% is used.\
    \  'bedops -e 1' is also popular."
  type: boolean?
  inputBinding:
    prefix: --element-of
- id: in_intersect
  doc: File2 [File]*
  type: File?
  inputBinding:
    prefix: --intersect
- id: in_merge
  doc: '[File]*'
  type: File?
  inputBinding:
    prefix: --merge
- id: in_not_element_of
  doc: "[bp | percentage] ReferenceFile File2 [File]*\nby default, -n 100% is used.\
    \  'bedops -n 1' is also popular."
  type: boolean?
  inputBinding:
    prefix: --not-element-of
- id: in_partition
  doc: '[File]*'
  type: File?
  inputBinding:
    prefix: --partition
- id: in_symm_diff
  doc: File2 [File]*
  type: File?
  inputBinding:
    prefix: --symmdiff
- id: in_everything
  doc: '[File]*'
  type: File?
  inputBinding:
    prefix: --everything
- id: in_chop
  doc: "[bp] [--stagger <nt>] [-x] File1 [File]*\nby default, -w 1 is used with no\
    \ staggering."
  type: boolean?
  inputBinding:
    prefix: --chop
- id: in_bed_ops
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_process_flags
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_operation
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedops-typical
