class: CommandLineTool
id: FastqConcat.cwl
inputs:
- id: in_in
  doc: Input (gzipped) FASTQ files.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output gzipped FASTQ file.
  type: File?
  inputBinding:
    prefix: -out
- id: in_compression_level
  doc: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\n\
    Default value: '1'"
  type: long?
  inputBinding:
    prefix: -compression_level
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
  doc: Output gzipped FASTQ file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- FastqConcat
