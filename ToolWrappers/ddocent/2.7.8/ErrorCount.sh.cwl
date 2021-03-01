class: CommandLineTool
id: ErrorCount.sh.cwl
inputs:
- id: in_individuals_equals_genotypes
  doc: of individuals and 0 equals 0 total genotypes
  type: long?
  inputBinding:
    prefix: '-9'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ErrorCount.sh
