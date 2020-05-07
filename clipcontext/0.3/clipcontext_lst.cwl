class: CommandLineTool
id: clipcontext_lst.cwl
inputs:
- id: min_len
  doc: 'Accept only transcripts with length >= --min-len (default: False)'
  type: long
  inputBinding:
    prefix: --min-len
- id: strict
  doc: 'Accept only transcripts with transcript support level (TSL) 1-5 (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --strict
- id: add_infos
  doc: 'Add additional information columns (gene ID, TSL, length) to output file (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --add-infos
- id: gtf
  doc: 'Genomic annotations (hg38) GTF file (.gtf or .gtf.gz) (NOTE: tested with Ensembl
    GTF files, expects transcript support level (TSL) information)'
  type: string
  inputBinding:
    prefix: --gtf
- id: out
  doc: Output transcript IDs list file
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- lst
