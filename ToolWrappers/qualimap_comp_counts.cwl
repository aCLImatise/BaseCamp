class: CommandLineTool
id: qualimap_comp_counts.cwl
inputs:
- id: in_algorithm
  doc: "Counting algorithm:\nuniquely-mapped-reads(default) or proportional"
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_bam
  doc: Mapping file in BAM format
  type: File
  inputBinding:
    prefix: -bam
- id: in_gtf
  doc: "Region file in GTF, GFF or BED format. If GTF\nformat is provided, counting\
    \ is based on\nattributes, otherwise based on feature name"
  type: File
  inputBinding:
    prefix: -gtf
- id: in_id
  doc: "GTF-specific. Attribute of the GTF to be used\nas feature ID. Regions with\
    \ the same ID will\nbe aggregated as part of the same feature.\nDefault: gene_id."
  type: string
  inputBinding:
    prefix: -id
- id: in_out
  doc: Output file of coverage report.
  type: File
  inputBinding:
    prefix: -out
- id: in_sequencing_protocol
  doc: "Sequencing library protocol:\nstrand-specific-forward,\nstrand-specific-reverse\
    \ or non-strand-specific\n(default)"
  type: string
  inputBinding:
    prefix: --sequencing-protocol
- id: in_paired
  doc: "Setting this flag for paired-end experiments\nwill result in counting fragments\
    \ instead of\nreads"
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_sorted
  doc: "This flag indicates that the input file is\nalready sorted by name. If not\
    \ set, additional\nsorting by name will be performed. Only\nrequired for paired-end\
    \ analysis."
  type: boolean
  inputBinding:
    prefix: --sorted
- id: in_type
  doc: "GTF-specific. Value of the third column of the\nGTF considered for counting.\
    \ Other types will\nbe ignored. Default: exon\n"
  type: string
  inputBinding:
    prefix: -type
- id: in_arg
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file of coverage report.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- qualimap
- comp-counts
