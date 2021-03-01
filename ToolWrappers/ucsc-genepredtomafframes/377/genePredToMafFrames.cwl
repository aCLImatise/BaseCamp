class: CommandLineTool
id: genePredToMafFrames.cwl
inputs:
- id: in_bed
  doc: '- output a bed of for each mafFrame region, useful for debugging.'
  type: File?
  inputBinding:
    prefix: -bed
- id: in_verbose
  doc: "- enable verbose tracing, the following levels are implemented:\n3 - print\
    \ information about data used to compute each record.\n4 - dump information about\
    \ the gene mappings that were constructed\n5 - dump information about the gene\
    \ mappings after split processing\n6 - dump information about the gene mappings\
    \ after frame linking\n"
  type: long?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genePredToMafFrames
