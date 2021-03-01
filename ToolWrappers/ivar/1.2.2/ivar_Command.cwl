class: CommandLineTool
id: ivar_Command.cwl
inputs:
- id: in_command
  doc: Description
  type: string
  inputBinding:
    position: 0
- id: in_trim
  doc: Trim reads in aligned BAM file
  type: string
  inputBinding:
    position: 1
- id: in_variants
  doc: Call variants from aligned BAM file
  type: string
  inputBinding:
    position: 2
- id: in_filter_variants
  doc: Filter variants across replicates or samples
  type: string
  inputBinding:
    position: 3
- id: in_consensus
  doc: Call consensus from aligned BAM file
  type: string
  inputBinding:
    position: 4
- id: in_get_masked
  doc: Detect primer mismatches and get primer indices for the amplicon to be masked
  type: string
  inputBinding:
    position: 5
- id: in_remove_reads
  doc: Remove reads from trimmed BAM file
  type: string
  inputBinding:
    position: 6
- id: in_version
  doc: Show version information
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ivar
- Command
