class: CommandLineTool
id: bam2occupancy.cwl
inputs:
- id: in_name
  doc: "name for this occupancy vector (prepended to occupancy\nvector)"
  type: string?
  inputBinding:
    prefix: --name
- id: in_hash_file
  doc: "for .bam input, write sorted hash file to the given\npath"
  type: long?
  inputBinding:
    prefix: --hashfile
- id: in_verbose
  doc: "for .bam input, output progress messages every million\nreads to stderr"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_path
  doc: "input .bam file, or hash .h5 file created by a\nprevious run"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam2occupancy
