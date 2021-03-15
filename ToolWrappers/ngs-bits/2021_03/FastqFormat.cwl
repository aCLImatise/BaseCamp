class: CommandLineTool
id: FastqFormat.cwl
inputs:
- id: in_in
  doc: Input FASTQ file (gzipped or plain).
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output text file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_reads
  doc: "The number of reads to parse.\nDefault value: '10000'"
  type: long?
  inputBinding:
    prefix: -reads
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
  doc: "Output text file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- FastqFormat
