class: CommandLineTool
id: tango_transfer.cwl
inputs:
- id: orf_taxonomy
  doc: Taxonomy assigned to ORFs (ORF ids in first column)
  type: string
  inputBinding:
    position: 0
- id: gff
  doc: GFF or file with contig id in first column and ORF id in second column
  type: string
  inputBinding:
    position: 1
- id: contig_taxonomy
  doc: Output file with assigned taxonomy for contigs
  type: string
  inputBinding:
    position: 2
- id: ignore_unc_rank
  doc: Ignore ORFs unclassified at <rank>
  type: string
  inputBinding:
    prefix: --ignore_unc_rank
- id: orf_tax_out
  doc: Also transfer taxonomy back to ORFs and output to file
  type: string
  inputBinding:
    prefix: --orf_tax_out
- id: cpus
  doc: Number of cpus to use when transferring taxonomy to contigs
  type: string
  inputBinding:
    prefix: --cpus
- id: chunksize
  doc: Size of chunks sent to process pool. For large input files using a large chunksize
    can make the job complete much faster than using the default value of 1.
  type: string
  inputBinding:
    prefix: --chunksize
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- transfer
