#!/usr/bin/env cwl-runner

baseCommand:
- count_chimeric_reads_per_gene.py
class: CommandLineTool
cwlVersion: v1.0
id: count_chimeric_reads_per_gene.py
inputs:
- doc: Name of gff file to count the reads per gene.
  id: genes_gff
  inputBinding:
    position: 0
  type: string
- doc: Reads files, output of map_chimeric_fragments.py
  id: reads_files
  inputBinding:
    position: 1
  type: string
- doc: 'Count the fragments marked as "single", by default count only the chimeric
    ones. This option forces -1 otherwise the counts will be doubled. (default: False)'
  id: singles
  inputBinding:
    prefix: --singles
  type: boolean
- doc: "Don't print header and antisense/IGR statistics. (default: False)"
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Name of features to count on the GTF file (column 2). (default: exon)'
  id: feature
  inputBinding:
    prefix: --feature
  type: string
- doc: 'Name of identifier to print (in column 8 of the GTF file). (default: gene_id)'
  id: identifier
  inputBinding:
    prefix: --identifier
  type: string
- doc: 'Minimal overlap between gene and read. (default: 5)'
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
