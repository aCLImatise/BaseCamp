class: CommandLineTool
id: VcfLeftNormalize.cwl
inputs:
- id: in_in
  doc: "Input VCF file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output VCF or VCF or VCF.GZ file. If unset, writes to STDOUT.\nDefault value:\
    \ ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -ref
- id: in_compression_level
  doc: "Output VCF compression level from 1 (fastest) to 9 (best compression). If\
    \ unset, an unzipped VCF is written.\nDefault value: '0'"
  type: long?
  inputBinding:
    prefix: -compression_level
- id: in_stream
  doc: "Allows to stream the input and output VCF without loading the whole file into\
    \ memory. Only supported with uncompressed VCF files.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -stream
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
  doc: "Output VCF or VCF or VCF.GZ file. If unset, writes to STDOUT.\nDefault value:\
    \ ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- VcfLeftNormalize
