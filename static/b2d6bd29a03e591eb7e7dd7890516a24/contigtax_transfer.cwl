class: CommandLineTool
id: contigtax_transfer.cwl
inputs:
- id: in_ignore_unc_rank
  doc: Ignore ORFs unclassified at <rank>
  type: string?
  inputBinding:
    prefix: --ignore_unc_rank
- id: in_orf_tax_out
  doc: Also transfer taxonomy back to ORFs and output to file
  type: File?
  inputBinding:
    prefix: --orf_tax_out
- id: in_cpus
  doc: Number of cpus to use when transferring taxonomy to
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_orf_taxonomy
  doc: Taxonomy assigned to ORFs (ORF ids in first column)
  type: string
  inputBinding:
    position: 0
- id: in_gff
  doc: "GFF or file with contig id in first column and ORF id\nin second column"
  type: string
  inputBinding:
    position: 1
- id: in_contig_taxonomy
  doc: Output file with assigned taxonomy for contigs
  type: string
  inputBinding:
    position: 2
- id: in_contigs
  doc: -c CHUNKSIZE, --chunksize CHUNKSIZE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_orf_tax_out
  doc: Also transfer taxonomy back to ORFs and output to file
  type: File?
  outputBinding:
    glob: $(inputs.in_orf_tax_out)
hints: []
cwlVersion: v1.1
baseCommand:
- contigtax
- transfer
