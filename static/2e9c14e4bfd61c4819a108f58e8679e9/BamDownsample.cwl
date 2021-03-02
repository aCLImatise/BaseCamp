class: CommandLineTool
id: BamDownsample.cwl
inputs:
- id: in_in
  doc: Input BAM file.
  type: File?
  inputBinding:
    prefix: -in
- id: in_percentage
  doc: Percentage of reads to keep.
  type: long?
  inputBinding:
    prefix: -percentage
- id: in_out
  doc: Output BAM file.
  type: File?
  inputBinding:
    prefix: -out
- id: in_test
  doc: "Test mode: fix random number generator seed and write kept read names to STDOUT.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output BAM file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- BamDownsample
