class: CommandLineTool
id: PhenotypesToGenes.cwl
inputs:
- id: in_in
  doc: "Input file, containing one HPO term identifier per line, e.g. HP:0002066.\
    \ Text after the identifier is ignored. If unset, reads from STDIN.\nDefault value:\
    \ ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output TSV file with genes (column 1) and matched phenotypes (column 2). If\
    \ unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_ignore_invalid
  doc: "Ignores invalid HPO identifiers instead of throwing an error.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -ignore_invalid
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output TSV file with genes (column 1) and matched phenotypes (column 2). If\
    \ unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- PhenotypesToGenes
