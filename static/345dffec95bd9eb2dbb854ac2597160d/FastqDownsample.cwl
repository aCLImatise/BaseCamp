class: CommandLineTool
id: FastqDownsample.cwl
inputs:
- id: in_in_one
  doc: Forward input gzipped FASTQ file(s).
  type: File?
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: Reverse input gzipped FASTQ file(s).
  type: File?
  inputBinding:
    prefix: -in2
- id: in_percentage
  doc: Percentage of reads to keep.
  type: double?
  inputBinding:
    prefix: -percentage
- id: in_out_one
  doc: Forward output gzipped FASTQ file.
  type: File?
  inputBinding:
    prefix: -out1
- id: in_out_two
  doc: Reverse output gzipped FASTQ file.
  type: File?
  inputBinding:
    prefix: -out2
- id: in_test
  doc: "Test mode: fix random number generator seed and write kept read names to STDOUT.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
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
- id: out_out_one
  doc: Forward output gzipped FASTQ file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: Reverse output gzipped FASTQ file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_two)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- FastqDownsample
