class: CommandLineTool
id: qualimap_comp_counts.cwl
inputs:
- id: algorithm
  doc: 'Counting algorithm: uniquely-mapped-reads(default) or proportional'
  type: string
  inputBinding:
    prefix: --algorithm
- id: bam
  doc: Mapping file in BAM format
  type: string
  inputBinding:
    prefix: -bam
- id: gtf
  doc: Region file in GTF, GFF or BED format. If GTF format is provided, counting
    is based on attributes, otherwise based on feature name
  type: string
  inputBinding:
    prefix: -gtf
- id: id
  doc: 'GTF-specific. Attribute of the GTF to be used as feature ID. Regions with
    the same ID will be aggregated as part of the same feature. Default: gene_id.'
  type: string
  inputBinding:
    prefix: -id
- id: out
  doc: Output file of coverage report.
  type: string
  inputBinding:
    prefix: -out
- id: sequencing_protocol
  doc: 'Sequencing library protocol: strand-specific-forward, strand-specific-reverse
    or non-strand-specific (default)'
  type: string
  inputBinding:
    prefix: --sequencing-protocol
- id: paired
  doc: Setting this flag for paired-end experiments will result in counting fragments
    instead of reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: sorted
  doc: This flag indicates that the input file is already sorted by name. If not set,
    additional sorting by name will be performed. Only required for paired-end analysis.
  type: boolean
  inputBinding:
    prefix: --sorted
- id: type
  doc: 'GTF-specific. Value of the third column of the GTF considered for counting.
    Other types will be ignored. Default: exon'
  type: string
  inputBinding:
    prefix: -type
outputs: []
cwlVersion: v1.1
baseCommand:
- qualimap
- comp-counts
