class: CommandLineTool
id: NGSDImportEnsembl.cwl
inputs:
- id: in_in
  doc: Ensembl transcript file (download and unzip ftp://ftp.ensembl.org/pub/grch37/release-87/gff3/homo_sapiens/Homo_sapiens.GRCh37.87.chr.gff3.gz).
  type: File?
  inputBinding:
    prefix: -in
- id: in_all
  doc: "If set, all transcripts are imported (the default is to skip transcripts not\
    \ labeled as with the 'GENCODE basic' tag).\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_force
  doc: "If set, overwrites old data.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -force
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- NGSDImportEnsembl
