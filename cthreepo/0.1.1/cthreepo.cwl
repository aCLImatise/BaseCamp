class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cthreepo.cwl
inputs:
- id: in_file
  doc: input file
  type: string
  inputBinding:
    prefix: --infile
- id: outfile
  doc: output file
  type: string
  inputBinding:
    prefix: --outfile
- id: map_file
  doc: NCBI style assembly_report file for mapping
  type: string
  inputBinding:
    prefix: --mapfile
- id: accn
  doc: NCBI Assembly Accession with version
  type: string
  inputBinding:
    prefix: --accn
- id: id_from
  doc: seq-id format in the input file; can be `ens`, `uc`, `gb`, or `rs`; default
    is `uc`
  type: string
  inputBinding:
    prefix: --id_from
- id: id_to
  doc: seq-id format in the output file; can be `ens`, `uc`, `gb`, or `rs`; default
    is `rs`
  type: string
  inputBinding:
    prefix: --id_to
- id: keep_unmapped
  doc: keep lines that don't have seq-id matches
  type: boolean
  inputBinding:
    prefix: --keep_unmapped
- id: primary
  doc: restrict to primary assembly only
  type: boolean
  inputBinding:
    prefix: --primary
- id: format
  doc: input file format; can be `gff3`, `gtf`, `bedgraph` `bed`, `sam`, `vcf`, `wig`
    or `tsv`; default is `gff3`
  type: string
  inputBinding:
    prefix: --format
- id: column
  doc: column where the seq-id is located; required for `tsv` format
  type: string
  inputBinding:
    prefix: --column
outputs: []
cwlVersion: v1.1
baseCommand:
- cthreepo
