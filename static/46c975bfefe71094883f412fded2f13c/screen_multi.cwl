class: CommandLineTool
id: ../../../screen_multi.cwl
inputs:
- id: q_smiles
  doc: filename of query structures as smiles (incompatible with --sdf and --qjson
    args)
  type: string
  inputBinding:
    prefix: --qsmiles
- id: q_sdf
  doc: filename of query structures as sdfile (incompatible with --smiles and --qjson
    args)
  type: string
  inputBinding:
    prefix: --qsdf
- id: qjs_on
  doc: filename of query structures as MoleculeObject JSON (incompatible with --qsmiles
    and --qsdf args)
  type: string
  inputBinding:
    prefix: --qjson
- id: q_smiles_title_line
  doc: the smiles file has a title line
  type: boolean
  inputBinding:
    prefix: --qsmilesTitleLine
- id: q_smiles_delimiter
  doc: delimiter for smiles file (default is tab)
  type: string
  inputBinding:
    prefix: --qsmilesDelimiter
- id: q_smiles_column
  doc: column in smiles file with the smiles (default is first column)
  type: string
  inputBinding:
    prefix: --qsmilesColumn
- id: q_smiles_name_column
  doc: column in smiles file with ID (default is second column)
  type: string
  inputBinding:
    prefix: --qsmilesNameColumn
- id: q_prop
  doc: property name in query molecules to report. If not defined (or property is
    not present) then name property is not written. JSON format uses the UUID as default
  type: string
  inputBinding:
    prefix: --qprop
- id: simm_in
  doc: similarity lower cutoff (1.0 means identical)
  type: string
  inputBinding:
    prefix: --simmin
- id: sim_max
  doc: similarity upper cutoff (1.0 means identical)
  type: string
  inputBinding:
    prefix: --simmax
- id: descriptor
  doc: descriptor or fingerprint type (default rdkit)
  type: string
  inputBinding:
    prefix: --descriptor
- id: metric
  doc: similarity metric (default tanimoto)
  type: string
  inputBinding:
    prefix: --metric
- id: fragment
  doc: Find single fragment if more than one (hac = biggest by heavy atom count, mw
    = biggest by mol weight )
  type: string
  inputBinding:
    prefix: --fragment
- id: hac_min
  doc: Min heavy atom count
  type: string
  inputBinding:
    prefix: --hacmin
- id: hac_max
  doc: Max heavy atom count
  type: string
  inputBinding:
    prefix: --hacmax
- id: mwm_in
  doc: Min mol weight
  type: string
  inputBinding:
    prefix: --mwmin
- id: mw_max
  doc: Max mol weight
  type: string
  inputBinding:
    prefix: --mwmax
- id: input
  doc: Input file, if not defined the STDIN is used
  type: string
  inputBinding:
    prefix: --input
- id: in_format
  doc: Input format. When using STDIN this must be specified.
  type: string
  inputBinding:
    prefix: --informat
- id: output
  doc: Base name for output file (no extension). If not defined then SDTOUT is used
    for the structures and output is used as base name of the other files.
  type: string
  inputBinding:
    prefix: --output
- id: out_format
  doc: Output format. Defaults to 'sdf'.
  type: string
  inputBinding:
    prefix: --outformat
- id: meta
  doc: Write metadata and metrics files
  type: boolean
  inputBinding:
    prefix: --meta
- id: thin
  doc: Thin output mode
  type: boolean
  inputBinding:
    prefix: --thin
- id: quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- screen_multi
