class: CommandLineTool
id: skg_convert.py.cwl
inputs:
- id: in_output
  doc: 'Output filename. [Default: stdout]'
  type: File?
  inputBinding:
    prefix: --output
- id: in_from
  doc: 'Input format. [Default: auto-detect]'
  type: string?
  inputBinding:
    prefix: --from
- id: in_to
  doc: Output format. [Required]
  type: string?
  inputBinding:
    prefix: --to
- id: in_flatten
  doc: "Flatten overlapping regions, keeping original\nboundaries. Not recommended\
    \ with --exons."
  type: boolean?
  inputBinding:
    prefix: --flatten
- id: in_merge
  doc: "[BASEPAIRS]   Merge overlapping regions with different names.\nRecommended\
    \ with --exons. Optional argument value is\nthe number of overlapping bases between\
    \ two regions to\ntrigger a merge. [Default: 1]"
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_gff_tag
  doc: GFF attributes tag to use for gene names.
  type: string?
  inputBinding:
    prefix: --gff-tag
- id: in_gff_type
  doc: "GFF record type (column 3) to use exclusively. E.g.\nfor GFF3 files, 'exon',\
    \ 'gene', and other SOFA terms\ncan be used here."
  type: long?
  inputBinding:
    prefix: --gff-type
- id: in_ref_flat_type
  doc: "Emit each exon instead of the whole gene regions.\n"
  type: string?
  inputBinding:
    prefix: --refflat-type
- id: in_file
  doc: 'Input filename. [Default: stdin]'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output filename. [Default: stdout]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- skg_convert.py
