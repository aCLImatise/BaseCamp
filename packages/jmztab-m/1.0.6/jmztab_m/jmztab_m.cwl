class: CommandLineTool
id: jmztab_m.cwl
inputs:
- id: in_from_json
  doc: "Example: --fromJson. Will parse inFile as JSON\nand write mzTab representation\
    \ to disk.\nRequires validation to be successful!"
  type: boolean?
  inputBinding:
    prefix: --fromJson
- id: in_level
  doc: "Choose validation level (Info, Warn, Error),\ndefault level is Info!"
  type: string?
  inputBinding:
    prefix: --level
- id: in_message
  doc: "Example: -m 1002. Print validation message\ndetail information based on error\
    \ code."
  type: boolean?
  inputBinding:
    prefix: --message
- id: in_outfile
  doc: "Example: -o \"output.txt\". Record validation\nmessages into outfile. If not\
    \ set, print\nvalidation messages to stdout/stderr."
  type: string?
  inputBinding:
    prefix: --outFile
- id: in_check_semantic
  doc: "Example: -s /path/to/mappingFile.xml. Use the\nprovided mapping file for semantic\
    \ validation.\nIf no mapping file is provided, the default\none will be used.\
    \ Requires an active internet\nconnection!"
  type: File?
  inputBinding:
    prefix: --checkSemantic
- id: in_to_json
  doc: "Example: --toJson. Will write a json\nrepresentation of inFile to disk. Requires\n\
    validation to be successful!"
  type: boolean?
  inputBinding:
    prefix: --toJson
- id: in_jm_z_tab_m_cli
  doc: "-c,--check <arg>           Example: -c /path/to/file.mztab. Check and\nvalidate\
    \ the provided a mzTab file."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jmztab-m:1.0.6--0
cwlVersion: v1.1
baseCommand:
- jmztab-m
