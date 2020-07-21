class: CommandLineTool
id: ../../../splice_site_summary.pl.cwl
inputs:
- id: reference_annotation_bed
  doc: Reference annotation in BED12 format
  type: boolean
  inputBinding:
    prefix: -a
- id: splice_junctions_mapped
  doc: Splice junctions from mapped RNA-seq data in BED6 format
  type: boolean
  inputBinding:
    prefix: -s
- id: reference_genome_fasta
  doc: Reference genome in Fasta format
  type: boolean
  inputBinding:
    prefix: -f
- id: chromosome_sizes_files
  doc: Chromosome sizes files
  type: boolean
  inputBinding:
    prefix: -c
- id: convert_resuting_bed
  doc: Convert resuting BED6 files to bigBed format
  type: boolean
  inputBinding:
    prefix: -b
- id: filter_canonical_splice
  doc: Filter canonical splice junctions
  type: boolean
  inputBinding:
    prefix: -n
- id: maximum_intron_length
  doc: Maximum intron length. Splice junctions covering introns larger than this value
    are not considered.
  type: boolean
  inputBinding:
    prefix: -i
- id: minimum_read_coverage
  doc: Minimum read coverage for a splice junction. Only splice junctions that are
    supported by at least this number of reads are considered.
  type: boolean
  inputBinding:
    prefix: -r
- id: expand_splice_junctions
  doc: Expand splice junctions by a window of this size on both sides
  type: boolean
  inputBinding:
    prefix: -w
- id: relative_output_path
  doc: Relative output path
  type: boolean
  inputBinding:
    prefix: -o
- id: prefix_output_files
  doc: Prefix all output files with this string
  type: boolean
  inputBinding:
    prefix: -p
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- splice_site_summary.pl
