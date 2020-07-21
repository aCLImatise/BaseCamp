class: CommandLineTool
id: ../../../obabel_prepare_pdb.cwl
inputs:
- id: no_gzip
  doc: Do not compress the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: input
  doc: PDB file for converting
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Base name for output files (no extension).
  type: string
  inputBinding:
    prefix: --output
- id: mol_two
  doc: Output as Mol2 format.
  type: boolean
  inputBinding:
    prefix: --mol2
- id: pdb_qt
  doc: Output as pdbqt format.
  type: boolean
  inputBinding:
    prefix: --pdbqt
- id: meta
  doc: Write metrics files
  type: boolean
  inputBinding:
    prefix: --meta
- id: proton_ate
  doc: protonate at this pH (optional)
  type: string
  inputBinding:
    prefix: --protonate
outputs: []
cwlVersion: v1.1
baseCommand:
- obabel_prepare_pdb
