class: CommandLineTool
id: VcfSort.cwl
inputs:
- id: in_in
  doc: Input variant list in VCF format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output variant list in VCF or VCF.GZ format.
  type: File?
  inputBinding:
    prefix: -out
- id: in_qual
  doc: "Also sort according to variant quality. Ignored if 'fai' file is given.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -qual
- id: in_fai
  doc: "FAI file defining different chromosome order.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -fai
- id: in_compression_level
  doc: "Output VCF compression level from 1 (fastest) to 9 (best compression). If\
    \ unset, an unzipped VCF is written.\nDefault value: '0'"
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- VcfSort
