class: CommandLineTool
id: skg_convert.py.cwl
inputs:
- id: file
  doc: 'Input filename. [Default: stdin]'
  type: File
  inputBinding:
    position: 0
- id: output
  doc: 'Output filename. [Default: stdout]'
  type: File
  inputBinding:
    prefix: --output
- id: from
  doc: 'Input format. [Default: auto-detect]'
  type: string
  inputBinding:
    prefix: --from
- id: to
  doc: Output format. [Required]
  type: string
  inputBinding:
    prefix: --to
- id: flatten
  doc: Flatten overlapping regions, keeping original boundaries. Not recommended with
    --exons.
  type: boolean
  inputBinding:
    prefix: --flatten
- id: merge
  doc: '[BASEPAIRS]   Merge overlapping regions with different names. Recommended
    with --exons. Optional argument value is the number of overlapping bases between
    two regions to trigger a merge. [Default: 1]'
  type: boolean
  inputBinding:
    prefix: --merge
- id: gff_tag
  doc: GFF attributes tag to use for gene names.
  type: string
  inputBinding:
    prefix: --gff-tag
- id: gff_type
  doc: GFF record type (column 3) to use exclusively. E.g. for GFF3 files, 'exon',
    'gene', and other SOFA terms can be used here.
  type: string
  inputBinding:
    prefix: --gff-type
- id: ref_flat_type
  doc: Emit each exon instead of the whole gene regions.
  type: string
  inputBinding:
    prefix: --refflat-type
outputs: []
cwlVersion: v1.1
baseCommand:
- skg_convert.py
