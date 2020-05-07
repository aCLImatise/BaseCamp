class: CommandLineTool
id: mssprottable_proteindata.cwl
inputs:
- id: i
  doc: Input file of protein table format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: setname
  doc: Name of biological set to use when adding protein info to the table
  type: string
  inputBinding:
    prefix: --setname
- id: gene_centric
  doc: Do not include protein group data in output. Should be one of [genes, assoc].
    With assoc, associated gene IDs are used from e.g. Biomart rather than the ones
    found in the FASTA db used for PSM search. These need to have been stored when
    creating a PSM lookup.
  type: string
  inputBinding:
    prefix: --genecentric
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- proteindata
