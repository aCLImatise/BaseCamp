class: CommandLineTool
id: filter_with_microbes_and_remapping.pl.cwl
inputs:
- id: in_bam
  doc: required at /usr/local/bin/filter_with_microbes_and_remapping.pl line 113.
  type: long?
  inputBinding:
    prefix: -bam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_with_microbes_and_remapping.pl
