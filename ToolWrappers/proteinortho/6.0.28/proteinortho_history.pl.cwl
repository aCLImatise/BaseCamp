class: CommandLineTool
id: proteinortho_history.pl.cwl
inputs:
- id: in_project
  doc: The project name (as specified in proteinortho with -project) (default:auto
    detect in the current directory)
  type: Directory?
  inputBinding:
    prefix: -project
- id: in_no_quotemeta
  doc: (optional) If set, then the query will not be escaped.
  type: boolean?
  inputBinding:
    prefix: -noquotemeta
- id: in_notable_format
  doc: (optional) If -step= is set too, then the tables are not formatted and a plain
    csv is printed instead.
  type: boolean?
  inputBinding:
    prefix: -notableformat
- id: in_delim
  doc: =                                         (optional) Defines the delimiter
    character for spliting the query (if you want to search for 2 genes/proteins)
  type: boolean?
  inputBinding:
    prefix: -delim
- id: in_query
  doc: A string of a single gene/protein or 2 separated by a comma or a whitespace
    (the input is escaped using quotemeta, use -noquotemeta to avoid this)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0
cwlVersion: v1.1
baseCommand:
- proteinortho_history.pl
