class: CommandLineTool
id: iu_filter_merged_reads.cwl
inputs:
- id: in_output
  doc: "Where filtered reads will be written (default:\n[-i]-MAX-MISMATCH-[-m]"
  type: File
  inputBinding:
    prefix: --output
- id: in_max_mismatches
  doc: "Maximum number of mismatches allowed in the overlapped\nregion\n"
  type: long
  inputBinding:
    prefix: --max-mismatches
- id: in_file_path
  doc: FASTA file to be filtered
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iu-filter-merged-reads
