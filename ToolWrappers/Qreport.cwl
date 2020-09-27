class: CommandLineTool
id: Qreport.cwl
inputs:
- id: in_package_version
  doc: package version.
  type: string
  inputBinding:
    prefix: -v
- id: in_help_dialog
  doc: help dialog.
  type: string
  inputBinding:
    prefix: -h
- id: in_file_mandatory_option
  doc: file [*fq|*fq.gz|*fq.bz2]. Mandatory option.
  type: File
  inputBinding:
    prefix: -i
- id: in_length_length_reads
  doc: length. Length of the reads. Mandatory option.
  type: long
  inputBinding:
    prefix: -l
- id: in_file_prefix_extension
  doc: file prefix (with NO extension). Mandatory option.
  type: File
  inputBinding:
    prefix: -o
- id: in_tiles_optional_default
  doc: of tiles. Optional (default 96).
  type: long
  inputBinding:
    prefix: -t
- id: in_quality_allowed_default
  doc: quality allowed. Optional (default 27).
  type: long
  inputBinding:
    prefix: -q
- id: in_different_quality_values
  doc: of different quality values allowed. Optional (default 46).
  type: long
  inputBinding:
    prefix: -n
- id: in_status_original_file
  doc: "status: 0 original file, 1 file filtered with trimFilter,\n2 file filtered\
    \ with another tool. Optional (default 0)."
  type: File
  inputBinding:
    prefix: -f
- id: in_value_quality_score
  doc: value for quality score 0. Optional (default 33).
  type: long
  inputBinding:
    prefix: '-0'
- id: in_values_low_quality
  doc: "values for low quality proportion plot. Optional (default 27,33,37),\nFormat\
    \ is either <int>[,<int>]* or <min-int>:<max-int>."
  type: long
  inputBinding:
    prefix: -Q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Qreport
