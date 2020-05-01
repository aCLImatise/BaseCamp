#!/usr/bin/env cwl-runner

baseCommand:
- opsin
class: CommandLineTool
cwlVersion: v1.0
id: opsin
inputs:
- doc: Allows interpretation of acids without the word acid e.g. "acetic"
  id: allow_acids_without_acid
  inputBinding:
    prefix: --allowAcidsWithoutAcid
  type: boolean
- doc: Enables reverse parsing to more accurately determine why parsing failed
  id: detailed_failure_analysis
  inputBinding:
    prefix: --detailedFailureAnalysis
  type: boolean
- doc: Include name in SMILES/InChI output (tab delimited)
  id: name
  inputBinding:
    prefix: --name
  type: boolean
- doc: "Sets OPSIN's output format (default smi) Allowed values are: cml for Chemical\
    \ Markup Language smi for SMILES extendedsmi for Extended SMILES inchi for InChI\
    \ (with FixedH) stdinchi for StdInChI stdinchikey for StdInChIKey"
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Enables interpretation of radicals
  id: allow_radicals
  inputBinding:
    prefix: --allowRadicals
  type: boolean
- doc: Allows stereochemistry uninterpretable by OPSIN to be ignored
  id: allow_uninterpretable_stereo
  inputBinding:
    prefix: --allowUninterpretableStereo
  type: boolean
- doc: Enables debugging
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Radicals are output as wildcard atoms
  id: wildcard_radicals
  inputBinding:
    prefix: --wildcardRadicals
  type: boolean
