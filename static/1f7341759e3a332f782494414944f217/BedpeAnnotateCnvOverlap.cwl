class: CommandLineTool
id: BedpeAnnotateCnvOverlap.cwl
inputs:
- id: in_in
  doc: Input SV file (in Bedpe format).
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output SV file (in Bedpe format).
  type: File?
  inputBinding:
    prefix: -out
- id: in_cnv
  doc: Input CNV file (in TSV format).
  type: File?
  inputBinding:
    prefix: -cnv
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
  doc: Output SV file (in Bedpe format).
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- BedpeAnnotateCnvOverlap
