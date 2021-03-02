class: CommandLineTool
id: FastqExtractBarcode.cwl
inputs:
- id: in_in
  doc: input fastq file1.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out_main
  doc: output filename for main fastq.
  type: File?
  inputBinding:
    prefix: -out_main
- id: in_out_index
  doc: "output filename for index fastq.\nDefault value: 'index.fastq.gz'"
  type: File?
  inputBinding:
    prefix: -out_index
- id: in_cut
  doc: "number of bases from the beginning of reads to use as barcodes.\nDefault value:\
    \ '0'"
  type: long?
  inputBinding:
    prefix: -cut
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
- id: out_out_main
  doc: output filename for main fastq.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_main)
- id: out_out_index
  doc: "output filename for index fastq.\nDefault value: 'index.fastq.gz'"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_index)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- FastqExtractBarcode
