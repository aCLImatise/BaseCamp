class: CommandLineTool
id: clove.cwl
inputs:
- id: in_algorithm_socratesdellydellycrestgustafbedpegridss
  doc: <algorithm (Socrates/Delly/Delly2/Crest/Gustaf/BEDPE/GRIDSS)>
  type: long?
  inputBinding:
    prefix: -i
- id: in_coverage
  doc: <coverage>
  type: File?
  inputBinding:
    prefix: -b
- id: in_o
  doc: '[default: CLOVE.vcf]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_perform_depth_check
  doc: "not perform read depth check. This option will lead all deletions and tandem\n\
    duplications to fail, but runs a lot faster. Use to get an idea about complex\n\
    variants only.\n"
  type: string?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: '[default: CLOVE.vcf]'
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints: []
cwlVersion: v1.1
baseCommand:
- clove
