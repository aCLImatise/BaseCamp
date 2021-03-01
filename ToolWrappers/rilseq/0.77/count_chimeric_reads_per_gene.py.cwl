class: CommandLineTool
id: count_chimeric_reads_per_gene.py.cwl
inputs:
- id: in_only_first
  doc: 'Count only the first in fragment. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --only_first
- id: in_only_second
  doc: 'Count only the second in fragment. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --only_second
- id: in_singles
  doc: "Count the fragments marked as \"single\", by default\ncount only the chimeric\
    \ ones. This option forces -1\notherwise the counts will be doubled. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --singles
- id: in_quiet
  doc: "Don't print header and antisense/IGR statistics.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_feature
  doc: "Name of features to count on the GTF file (column 2).\n(default: exon)"
  type: File?
  inputBinding:
    prefix: --feature
- id: in_identifier
  doc: "Name of identifier to print (in column 8 of the GTF\nfile). (default: gene_id)"
  type: File?
  inputBinding:
    prefix: --identifier
- id: in_overlap
  doc: "Minimal overlap between gene and read. (default: 5)\n"
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_genes_gff
  doc: Name of gff file to count the reads per gene.
  type: string
  inputBinding:
    position: 0
- id: in_reads_files
  doc: Reads files, output of map_chimeric_fragments.py
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- count_chimeric_reads_per_gene.py
