class: CommandLineTool
id: opsin.cwl
inputs:
- id: allow_acids_without_acid
  doc: Allows interpretation of acids without the word acid e.g. "acetic"
  type: boolean
  inputBinding:
    prefix: --allowAcidsWithoutAcid
- id: detailed_failure_analysis
  doc: Enables reverse parsing to more accurately determine why parsing failed
  type: boolean
  inputBinding:
    prefix: --detailedFailureAnalysis
- id: name
  doc: Include name in SMILES/InChI output (tab delimited)
  type: boolean
  inputBinding:
    prefix: --name
- id: output
  doc: "Sets OPSIN's output format (default smi) Allowed values are: cml for Chemical\
    \ Markup Language smi for SMILES extendedsmi for Extended SMILES inchi for InChI\
    \ (with FixedH) stdinchi for StdInChI stdinchikey for StdInChIKey"
  type: string
  inputBinding:
    prefix: --output
- id: allow_radicals
  doc: Enables interpretation of radicals
  type: boolean
  inputBinding:
    prefix: --allowRadicals
- id: allow_uninterpretable_stereo
  doc: Allows stereochemistry uninterpretable by OPSIN to be ignored
  type: boolean
  inputBinding:
    prefix: --allowUninterpretableStereo
- id: verbose
  doc: Enables debugging
  type: boolean
  inputBinding:
    prefix: --verbose
- id: wildcard_radicals
  doc: Radicals are output as wildcard atoms
  type: boolean
  inputBinding:
    prefix: --wildcardRadicals
outputs: []
cwlVersion: v1.1
baseCommand:
- opsin
