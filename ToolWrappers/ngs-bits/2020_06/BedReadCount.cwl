class: CommandLineTool
id: BedReadCount.cwl
inputs:
- id: in_bam
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -bam
- id: in_min_mapq
  doc: "Minimum mapping quality.\nDefault value: '1'"
  type: long
  inputBinding:
    prefix: -min_mapq
- id: in_in
  doc: "Input BED file (note that overlapping regions will be merged before processing).\
    \ If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
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
- id: out_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- BedReadCount
