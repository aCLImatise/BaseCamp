class: CommandLineTool
id: mono_xmltool.cwl
inputs:
- id: in_validate
  doc: "[*.rng | *.rnc | *.nvdl | *.xsd] [instances]\n--validate-rng relax-ng-grammar-xml\
    \ [instances]\n--validate-rnc relax-ng-compact-grammar-file [instances]\n--validate-nvdl\
    \ nvdl-script-xml [instances]\n--validate-xsd xml-schema [instances]\n--validate-xsd2\
    \ xml-schema [instances] (in .NET 2.0 validator)\n--validate-dtd instances\n--transform\
    \ stylesheet instance-xml [output-xml]\n--prettyprint [source] [result]"
  type: File
  inputBinding:
    prefix: --validate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_validate
  doc: "[*.rng | *.rnc | *.nvdl | *.xsd] [instances]\n--validate-rng relax-ng-grammar-xml\
    \ [instances]\n--validate-rnc relax-ng-compact-grammar-file [instances]\n--validate-nvdl\
    \ nvdl-script-xml [instances]\n--validate-xsd xml-schema [instances]\n--validate-xsd2\
    \ xml-schema [instances] (in .NET 2.0 validator)\n--validate-dtd instances\n--transform\
    \ stylesheet instance-xml [output-xml]\n--prettyprint [source] [result]"
  type: File
  outputBinding:
    glob: $(inputs.in_validate)
cwlVersion: v1.1
baseCommand:
- mono-xmltool
