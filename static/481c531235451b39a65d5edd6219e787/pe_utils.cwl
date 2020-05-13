class: CommandLineTool
id: pe_utils.cwl
inputs:
- id: compute_insert_len
  doc: Compute insert length for given sample. Takes as input (1) a comma-separated
    list of sorted, indexed BAM files with headers (or a single BAM filename), (2)
    a GFF file with constitutive exons. Outputs the insert length distribution into
    the output directory.
  type: string
  inputBinding:
    prefix: --compute-insert-len
- id: no_bam_filter
  doc: If provided, this ignores the BAM file flags that state whether the read was
    paired or not, and instead uses only the read IDs to pair up the mates. Use this
    if your paired-end BAM was the result of a samtools merge operation.
  type: boolean
  inputBinding:
    prefix: --no-bam-filter
- id: min_exon_size
  doc: Minimum size of constitutive exon (in nucleotides) that should be used in the
    computation. Default is 500 bp.
  type: long
  inputBinding:
    prefix: --min-exon-size
- id: sd_max
  doc: Number of standard deviations used to define outliers. By default, set to 2,
    meaning that any points at least 2*sigma away from the mean of the insert length
    distribution will be discarded.
  type: string
  inputBinding:
    prefix: --sd-max
- id: output_dir
  doc: Output directory.
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- pe_utils
