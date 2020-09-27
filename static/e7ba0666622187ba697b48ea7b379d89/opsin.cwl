class: CommandLineTool
id: opsin.cwl
inputs:
- id: in_allow_acids_without_acid
  doc: "Allows interpretation of acids without\nthe word acid e.g. \"acetic\""
  type: boolean
  inputBinding:
    prefix: --allowAcidsWithoutAcid
- id: in_detailed_failure_analysis
  doc: "Enables reverse parsing to more\naccurately determine why parsing failed"
  type: boolean
  inputBinding:
    prefix: --detailedFailureAnalysis
- id: in_name
  doc: "Include name in SMILES/InChI output\n(tab delimited)"
  type: boolean
  inputBinding:
    prefix: --name
- id: in_output
  doc: "Sets OPSIN's output format (default\nsmi)\nAllowed values are:\ncml for Chemical\
    \ Markup Language\nsmi for SMILES\nextendedsmi for Extended SMILES\ninchi for\
    \ InChI (with FixedH)\nstdinchi for StdInChI\nstdinchikey for StdInChIKey"
  type: string
  inputBinding:
    prefix: --output
- id: in_allow_radicals
  doc: Enables interpretation of radicals
  type: boolean
  inputBinding:
    prefix: --allowRadicals
- id: in_allow_uninterpretable_stereo
  doc: "Allows stereochemistry uninterpretable\nby OPSIN to be ignored"
  type: boolean
  inputBinding:
    prefix: --allowUninterpretableStereo
- id: in_verbose
  doc: Enables debugging
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_wildcard_radicals
  doc: Radicals are output as wildcard atoms
  type: boolean
  inputBinding:
    prefix: --wildcardRadicals
- id: in_jar
  doc: ''
  type: long
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- opsin
