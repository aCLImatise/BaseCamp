class: CommandLineTool
id: BamToFastq.cwl
inputs:
- id: in_in
  doc: Input BAM file.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out_one
  doc: Read 1 output FASTQ.GZ file.
  type: File?
  inputBinding:
    prefix: -out1
- id: in_out_two
  doc: Read 2 output FASTQ.GZ file.
  type: File?
  inputBinding:
    prefix: -out2
- id: in_reg
  doc: "Export only reads in the given region. Format: chr:start-end.\nDefault value:\
    \ ''"
  type: string?
  inputBinding:
    prefix: -reg
- id: in_remove_duplicates
  doc: "Does not export duplicate reads into the FASTQ file.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -remove_duplicates
- id: in_compression_level
  doc: "Output gzip compression level from 1 (fastest) to 9 (best compression).\n\
    Default value: '1'"
  type: long?
  inputBinding:
    prefix: -compression_level
- id: in_write_buffer_size
  doc: "Output write buffer size (number of FASTQ entry pairs).\nDefault value: '100'"
  type: long?
  inputBinding:
    prefix: -write_buffer_size
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
- id: out_out_one
  doc: Read 1 output FASTQ.GZ file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: Read 2 output FASTQ.GZ file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_two)
hints: []
cwlVersion: v1.1
baseCommand:
- BamToFastq
