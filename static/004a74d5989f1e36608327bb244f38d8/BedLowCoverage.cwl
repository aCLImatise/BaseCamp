class: CommandLineTool
id: BedLowCoverage.cwl
inputs:
- id: in_bam
  doc: Input BAM file.
  type: File?
  inputBinding:
    prefix: -bam
- id: in_cut_off
  doc: Minimum depth to consider a base 'high coverage'.
  type: long?
  inputBinding:
    prefix: -cutoff
- id: in_in
  doc: "Input BED file containing the regions of interest. If unset, reads from STDIN.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_wgs
  doc: "WGS mode without target region. Genome information is taken from the BAM file.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -wgs
- id: in_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_min_mapq
  doc: "Minimum mapping quality to consider a read.\nDefault value: '1'"
  type: long?
  inputBinding:
    prefix: -min_mapq
- id: in_min_base_q
  doc: "Minimum base quality to consider a base.\nDefault value: '0'"
  type: long?
  inputBinding:
    prefix: -min_baseq
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
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- BedLowCoverage
