class: CommandLineTool
id: rtg_pedstats.cwl
inputs:
- id: in_delimiter
  doc: output id lists using this separator (Default is \n)
  type: string
  inputBinding:
    prefix: --delimiter
- id: in_dot
  doc: "output pedigree in Graphviz format, using the supplied\ntext as a title"
  type: string
  inputBinding:
    prefix: --dot
- id: in_families
  doc: output information about family structures
  type: boolean
  inputBinding:
    prefix: --families
- id: in_female_ids
  doc: output ids of all females
  type: boolean
  inputBinding:
    prefix: --female-ids
- id: in_founder_ids
  doc: output ids of all founders
  type: boolean
  inputBinding:
    prefix: --founder-ids
- id: in_male_ids
  doc: output ids of all males
  type: boolean
  inputBinding:
    prefix: --male-ids
- id: in_maternal_ids
  doc: output ids of maternal individuals
  type: boolean
  inputBinding:
    prefix: --maternal-ids
- id: in_paternal_ids
  doc: output ids of paternal individuals
  type: boolean
  inputBinding:
    prefix: --paternal-ids
- id: in_primary_ids
  doc: output ids of all primary individuals
  type: boolean
  inputBinding:
    prefix: --primary-ids
- id: in_simple_dot
  doc: "when outputting Graphviz format, use a layout that\nlooks less like a traditional\
    \ pedigree diagram but\nworks better with large complex pedigrees"
  type: boolean
  inputBinding:
    prefix: --simple-dot
- id: in_file
  doc: "the pedigree file to process, may be PED or VCF, use\n'-' to read from stdin"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rtg
- pedstats
