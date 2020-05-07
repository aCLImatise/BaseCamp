class: CommandLineTool
id: msspeptable_build.cwl
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
  doc: Do not include protein group data in output, but use gene names instead. These
    need to have been stored when creating a PSM lookup.
  type: boolean
  inputBinding:
    prefix: --genecentric
- id: non_centric
  doc: Do not include protein group or gene data in output, just use accessions.
  type: boolean
  inputBinding:
    prefix: --noncentric
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
outputs: []
cwlVersion: v1.1
baseCommand:
- msspeptable
- build
