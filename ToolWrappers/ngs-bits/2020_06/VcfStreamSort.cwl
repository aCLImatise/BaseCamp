class: CommandLineTool
id: VcfStreamSort.cwl
inputs:
- id: in_in
  doc: "Input VCF file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output VCF list. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_number_variants_cache
  doc: "Number of variants to cache for sorting.\nDefault value: '10000'"
  type: long?
  inputBinding:
    prefix: -n
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
hints: []
cwlVersion: v1.1
baseCommand:
- VcfStreamSort
