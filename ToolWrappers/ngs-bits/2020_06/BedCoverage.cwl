class: CommandLineTool
id: BedCoverage.cwl
inputs:
- id: in_bam
  doc: Input BAM file(s).
  type: File
  inputBinding:
    prefix: -bam
- id: in_min_mapq
  doc: "Minimum mapping quality.\nDefault value: '1'"
  type: long
  inputBinding:
    prefix: -min_mapq
- id: in_dup
  doc: "Include reads marked as duplicates.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -dup
- id: in_in
  doc: "Input BED file (note that overlapping regions will be merged before processing).\
    \ If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_mode
  doc: "Mode to optimize run time. Use 'panel' mode if only a small part of the data\
    \ in the BAM file is accessed, e.g. a sub-panel of an exome.\nDefault value: 'default'\n\
    Valid: 'default,panel'"
  type: File
  inputBinding:
    prefix: -mode
- id: in_decimals
  doc: "Number of decimals used in output.\nDefault value: '2'"
  type: long
  inputBinding:
    prefix: -decimals
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
- BedCoverage
