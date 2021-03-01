class: CommandLineTool
id: bs_call.cwl
inputs:
- id: in_no_split
  doc: Do not split output on contig
  type: boolean?
  inputBinding:
    prefix: --no-split
- id: in_haploid
  doc: Assume genome is haploid
  type: boolean?
  inputBinding:
    prefix: --haploid
- id: in_keep_duplicates
  doc: Don't merge duplicate reads
  type: boolean?
  inputBinding:
    prefix: --keep-duplicates
- id: in_ignore_duplicates
  doc: Ignore duplicate flag from SAM/BAM files
  type: boolean?
  inputBinding:
    prefix: --ignore-duplicates
- id: in_keep_unmatched
  doc: Don't discard reads that don't form proper pairs
  type: boolean?
  inputBinding:
    prefix: --keep-unmatched
- id: in_extra_stats
  doc: Generate extra stats files
  type: boolean?
  inputBinding:
    prefix: --extra-stats
- id: in_right_trim
  doc: Bases to trim from right of read pair
  type: boolean?
  inputBinding:
    prefix: --right-trim
- id: in_left_trim
  doc: Bases to trim from left of read pair
  type: boolean?
  inputBinding:
    prefix: --left-trim
- id: in_blank_trim
  doc: Don't use trimmed bases for genotype estimation
  type: boolean?
  inputBinding:
    prefix: --blank-trim
- id: in_mapq_threshold
  doc: Set MAPQ threshold for selecting reads (default 20)
  type: long?
  inputBinding:
    prefix: --mapq-threshold
- id: in_bq_threshold
  doc: Set base quality threshold for calling (default 20)
  type: long?
  inputBinding:
    prefix: --bq-threshold
- id: in_max_template_length
  doc: Set maximum template length for a pair (default 1000)
  type: long?
  inputBinding:
    prefix: --max-template-length
- id: in_realign_tolerance
  doc: Tolerance for realignment positions (default 8)
  type: long?
  inputBinding:
    prefix: --realign-tolerance
- id: in_no_compress
  doc: SAMPLE
  type: File?
  inputBinding:
    prefix: --no-compress
- id: in_contig_bed
  doc: (BED)
  type: File?
  inputBinding:
    prefix: --contig-bed
- id: in_dbsnp
  doc: (dbSNP processed file)
  type: File?
  inputBinding:
    prefix: --dbsnp
- id: in_conversion
  doc: ',<float> Set under and over conversion rates (default 0.01,0.05)'
  type: double?
  inputBinding:
    prefix: --conversion
- id: in_reference_bias
  doc: Set bias to reference homozygote (default 2)
  type: double?
  inputBinding:
    prefix: --reference-bias
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_compress
  doc: SAMPLE
  type: File?
  outputBinding:
    glob: $(inputs.in_no_compress)
hints: []
cwlVersion: v1.1
baseCommand:
- bs_call
