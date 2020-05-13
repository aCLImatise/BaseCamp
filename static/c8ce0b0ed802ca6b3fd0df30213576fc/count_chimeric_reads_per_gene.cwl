class: CommandLineTool
id: count_chimeric_reads_per_gene.py.cwl
inputs:
- id: genes_gff
  doc: Name of gff file to count the reads per gene.
  type: string
  inputBinding:
    position: 0
- id: reads_files
  doc: Reads files, output of map_chimeric_fragments.py
  type: string
  inputBinding:
    position: 1
- id: singles
  doc: 'Count the fragments marked as "single", by default count only the chimeric
    ones. This option forces -1 otherwise the counts will be doubled. (default: False)'
  type: boolean
  inputBinding:
    prefix: --singles
- id: quiet
  doc: "Don't print header and antisense/IGR statistics. (default: False)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: feature
  doc: 'Name of features to count on the GTF file (column 2). (default: exon)'
  type: string
  inputBinding:
    prefix: --feature
- id: identifier
  doc: 'Name of identifier to print (in column 8 of the GTF file). (default: gene_id)'
  type: string
  inputBinding:
    prefix: --identifier
- id: overlap
  doc: 'Minimal overlap between gene and read. (default: 5)'
  type: string
  inputBinding:
    prefix: --overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- count_chimeric_reads_per_gene.py
