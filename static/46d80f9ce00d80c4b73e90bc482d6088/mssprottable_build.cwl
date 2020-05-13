class: CommandLineTool
id: mssprottable_build.cwl
inputs:
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
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: gene_centric
  doc: Do not include protein group data in output. Should be one of [genes, assoc].
    With assoc, associated gene IDs are used from e.g. Biomart rather than the ones
    found in the FASTA db used for PSM search. These need to have been stored when
    creating a PSM lookup.
  type: string
  inputBinding:
    prefix: --genecentric
- id: isobaric
  doc: Specifies to add isobaric quant data from lookup DB to output table
  type: boolean
  inputBinding:
    prefix: --isobaric
- id: precursor
  doc: Specifies to add precursor quant data from lookup DB to output table
  type: boolean
  inputBinding:
    prefix: --precursor
- id: probability
  doc: Output protein probability to table.
  type: boolean
  inputBinding:
    prefix: --probability
- id: fdr
  doc: Output FDR data to table
  type: boolean
  inputBinding:
    prefix: --fdr
- id: pep
  doc: Output posterior error probabilities (PEP) to table.
  type: boolean
  inputBinding:
    prefix: --pep
- id: merge_cut_off
  doc: FDR cutoff when building merged protein table, to use when a cutoff has been
    used before storing the table to lookup. FDR values need to be stored in the lookup
  type: string
  inputBinding:
    prefix: --mergecutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- build
