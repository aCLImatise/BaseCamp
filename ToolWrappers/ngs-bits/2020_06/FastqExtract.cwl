class: CommandLineTool
id: FastqExtract.cwl
inputs:
- id: in_in
  doc: Input FASTQ file (gzipped or plain).
  type: File
  inputBinding:
    prefix: -in
- id: in_ids
  doc: Input TSV file containing IDs (without the '@') in the first column and optional
    length in the second column.
  type: File
  inputBinding:
    prefix: -ids
- id: in_out
  doc: Output FASTQ file.
  type: File
  inputBinding:
    prefix: -out
- id: in_invert_match_keep
  doc: "Invert match: keep non-matching reads.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output FASTQ file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- FastqExtract
