class: CommandLineTool
id: rtg_help_pedstats.cwl
inputs:
- id: file
  doc: the pedigree file to process, may be PED or VCF, use '-' to read from stdin
  type: File
  inputBinding:
    position: 0
- id: delimiter
  doc: output id lists using this separator (Default is \n)
  type: string
  inputBinding:
    prefix: --delimiter
- id: dot
  doc: output pedigree in Graphviz format, using the supplied text as a title
  type: string
  inputBinding:
    prefix: --dot
- id: families
  doc: output information about family structures
  type: boolean
  inputBinding:
    prefix: --families
- id: female_ids
  doc: output ids of all females
  type: boolean
  inputBinding:
    prefix: --female-ids
- id: founder_ids
  doc: output ids of all founders
  type: boolean
  inputBinding:
    prefix: --founder-ids
- id: male_ids
  doc: output ids of all males
  type: boolean
  inputBinding:
    prefix: --male-ids
- id: maternal_ids
  doc: output ids of maternal individuals
  type: boolean
  inputBinding:
    prefix: --maternal-ids
- id: paternal_ids
  doc: output ids of paternal individuals
  type: boolean
  inputBinding:
    prefix: --paternal-ids
- id: primary_ids
  doc: output ids of all primary individuals
  type: boolean
  inputBinding:
    prefix: --primary-ids
- id: simple_dot
  doc: when outputting Graphviz format, use a layout that looks less like a traditional
    pedigree diagram but works better with large complex pedigrees
  type: boolean
  inputBinding:
    prefix: --simple-dot
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- pedstats
