class: CommandLineTool
id: add_gff_info_counts.cwl
inputs:
- id: in_verbose
  doc: "Sample names, in the same order as the count files\n[required]"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_count_files
  doc: Count file(s)  [required]
  type: File?
  inputBinding:
    prefix: --count-files
- id: in_fp_kms
  doc: If the counts are FPKMS
  type: boolean?
  inputBinding:
    prefix: --fpkms
- id: in_feature_counts
  doc: If the counts files are from featureCounts
  type: boolean?
  inputBinding:
    prefix: --featureCounts
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- counts
