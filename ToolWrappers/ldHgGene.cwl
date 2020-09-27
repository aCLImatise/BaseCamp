class: CommandLineTool
id: ldHgGene.cwl
inputs:
- id: in_bin
  doc: Add bin column (now the default)
  type: boolean
  inputBinding:
    prefix: -bin
- id: in_no_bin
  doc: don't add binning (you probably don't want this)
  type: boolean
  inputBinding:
    prefix: -nobin
- id: in_exon
  doc: Sets type field for exons to specific value
  type: string
  inputBinding:
    prefix: -exon
- id: in_old_table
  doc: Don't overwrite what's already in table
  type: boolean
  inputBinding:
    prefix: -oldTable
- id: in_noncoding
  doc: Forces whole prediction to be UTR
  type: boolean
  inputBinding:
    prefix: -noncoding
- id: in_gtf
  doc: input is GTF, stop codon is not in CDS
  type: boolean
  inputBinding:
    prefix: -gtf
- id: in_pred_tab
  doc: input is already in genePredTab format
  type: boolean
  inputBinding:
    prefix: -predTab
- id: in_require_cds
  doc: discard genes that don't have CDS annotation
  type: boolean
  inputBinding:
    prefix: -requireCDS
- id: in_out
  doc: "write output, in genePred format, instead of loading\ntable. Database is ignored."
  type: File
  inputBinding:
    prefix: -out
- id: in_gene_pred_ext
  doc: "a extended genePred, including frame\ninformation and gene name"
  type: string
  inputBinding:
    prefix: -genePredExt
- id: in_implied_stop_after_cds
  doc: '- implied stop codon in GFF/GTF after CDS'
  type: boolean
  inputBinding:
    prefix: -impliedStopAfterCds
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ldHgGene
