class: CommandLineTool
id: pos2bed.pl.cwl
inputs:
- id: in_output_to_file
  doc: (Output to file)
  type: File?
  inputBinding:
    prefix: -o
- id: in_bed
  doc: (Output to file with same name as input with *.bed extension)
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_track
  doc: (Include track line with name for uploading to UCSC Genome Browser)
  type: string?
  inputBinding:
    prefix: -track
- id: in_set_th_column
  doc: (Set 5th column to the value 1 instead of value in 6th column of pos file)
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_float
  doc: '(Allow the 5th column to be a floating point number, default: integer)'
  type: boolean?
  inputBinding:
    prefix: -float
- id: in_color
  doc: (color strands red and blue, will also add a track line to file)
  type: File?
  inputBinding:
    prefix: -color
- id: in_peak_slash_pos_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_to_file
  doc: (Output to file)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_to_file)
hints: []
cwlVersion: v1.1
baseCommand:
- pos2bed.pl
