class: CommandLineTool
id: VcfAnnotateFromBed.cwl
inputs:
- id: in_bed
  doc: BED file used for annotation.
  type: File
  inputBinding:
    prefix: -bed
- id: in_name
  doc: Annotation name in output VCF file.
  type: File
  inputBinding:
    prefix: -name
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
- id: out_name
  doc: Annotation name in output VCF file.
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- VcfAnnotateFromBed
