class: CommandLineTool
id: seqhax_pairs.cwl
inputs:
- id: in_force_output_existing
  doc: Force output to existing files.
  type: boolean
  inputBinding:
    prefix: -f
- id: in_minimum_length_read
  doc: Minimum length of each read. [default 1]
  type: long
  inputBinding:
    prefix: -l
- id: in_pair_first_mate
  doc: Pair first mate output
  type: File
  inputBinding:
    prefix: '-1'
- id: in_pair_mate_output
  doc: Pair second mate output
  type: File
  inputBinding:
    prefix: '-2'
- id: in_interleaved_pairsonly_output
  doc: Interleaved pairs-only output
  type: File
  inputBinding:
    prefix: -p
- id: in_unpaired_read_output
  doc: Unpaired read output
  type: File
  inputBinding:
    prefix: -u
- id: in_s
  doc: '"Strict interleaved" output, all reads'
  type: File
  inputBinding:
    prefix: -s
- id: in_b
  doc: '"Broken paired" output, all reads'
  type: File
  inputBinding:
    prefix: -b
- id: in_output_statistics_file
  doc: Output statistics to FILE.
  type: File
  inputBinding:
    prefix: -y
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_statistics_file
  doc: Output statistics to FILE.
  type: File
  outputBinding:
    glob: $(inputs.in_output_statistics_file)
cwlVersion: v1.1
baseCommand:
- seqhax
- pairs
