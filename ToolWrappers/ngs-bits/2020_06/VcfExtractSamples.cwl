class: CommandLineTool
id: VcfExtractSamples.cwl
inputs:
- id: in_samples
  doc: Comma-separated list of samples to extract (in the given order).
  type: string
  inputBinding:
    prefix: -samples
- id: in_in
  doc: "Input VCF file. If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output VCF list. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
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
cwlVersion: v1.1
baseCommand:
- VcfExtractSamples
