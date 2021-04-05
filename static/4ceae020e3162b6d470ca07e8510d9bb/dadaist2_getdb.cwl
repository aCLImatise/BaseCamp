class: CommandLineTool
id: dadaist2_getdb.cwl
inputs:
- id: in_printed_dot
  doc: "DOWNLOAD ONE OR MORE DATABASES\ndadaist2-getdb -d DATABASE_NAME [-o OUTPUT_DIR]\n\
    dadaist2-getdb -d DB1 -d DB2 -d DB3 [-o OUTPUT_DIR]\ndadaist2-getdb -q QUERY_STRING"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- dadaist2-getdb
