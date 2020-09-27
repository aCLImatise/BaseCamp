class: CommandLineTool
id: convert_bowtie_output.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_bowtie_output.pl
