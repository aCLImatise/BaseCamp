class: CommandLineTool
id: variant.cwl
inputs:
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_output
  doc: Don't output reads (used for profiling with -q)
  type: boolean
  inputBinding:
    prefix: --no-output
- id: rules
  doc: JSON ecript for the rules.
  type: boolean
  inputBinding:
    prefix: --rules
- id: proc_regions_file
  doc: Samtools-style region string (e.g. 1:1,000-2,000) or BED/VCF of regions to
    process. -k UN iterates over unmapped-unmapped reads
  type: boolean
  inputBinding:
    prefix: --proc-regions-file
- id: mark_as_qc_fail
  doc: Flag reads that don't pass VariantBam with the failed QC flag, rather than
    deleting the read.
  type: boolean
  inputBinding:
    prefix: --mark-as-qc-fail
- id: output
  doc: Output file to write to (BAM/SAM/CRAM) file instead of stdout
  type: boolean
  inputBinding:
    prefix: --output
- id: cram
  doc: Output file should be in CRAM format
  type: boolean
  inputBinding:
    prefix: --cram
- id: bam
  doc: Output should be in binary BAM format
  type: boolean
  inputBinding:
    prefix: --bam
- id: reference
  doc: Path to reference. Required for reading/writing CRAM
  type: boolean
  inputBinding:
    prefix: --reference
- id: strip_tags
  doc: Remove the specified tags, separated by commas. eg. -s RG,MD
  type: boolean
  inputBinding:
    prefix: --strip-tags
- id: strip_all_tags
  doc: Remove all alignment tags
  type: boolean
  inputBinding:
    prefix: --strip-all-tags
- id: write_trimmed
  doc: Output the base-quality trimmed sequence rather than the original sequence.
    Also removes quality scores
  type: boolean
  inputBinding:
    prefix: --write-trimmed
- id: qc_file
  doc: Output a qc file that contains information about BAM
  type: boolean
  inputBinding:
    prefix: --qc-file
- id: max_coverage
  doc: Maximum coverage of output file. BAM must be sorted. Negative values enforce
    a minimum coverage
  type: boolean
  inputBinding:
    prefix: --max-coverage
- id: min_phred
  doc: Set the minimum base quality score considered to be high-quality
  type: boolean
  inputBinding:
    prefix: --min-phred
- id: region
  doc: Regions (e.g. myvcf.vcf or WG for whole genome) or newline seperated subsequence
    file.
  type: boolean
  inputBinding:
    prefix: --region
- id: exclude_region
  doc: Same as -g, but for region where satisfying a rule EXCLUDES this read.
  type: boolean
  inputBinding:
    prefix: --exclude-region
- id: linked_region
  doc: Same as -g, but turns on mate-linking
  type: boolean
  inputBinding:
    prefix: --linked-region
- id: linked_exclude_region
  doc: Same as -l, but for mate-linked region where satisfying this rule EXCLUDES
    this read.
  type: boolean
  inputBinding:
    prefix: --linked-exclude-region
- id: region_pad
  doc: Apply a padding to each region supplied with the region flags (specify after
    region flag)
  type: boolean
  inputBinding:
    prefix: --region-pad
- id: min_clip
  doc: Minimum number of quality clipped bases
  type: boolean
  inputBinding:
    prefix: --min-clip
- id: max_n_bases
  doc: Maximum number of N bases
  type: boolean
  inputBinding:
    prefix: --max-nbases
- id: min_mapq
  doc: Minimum mapping quality
  type: boolean
  inputBinding:
    prefix: --min-mapq
- id: min_del
  doc: Minimum number of deleted bases
  type: boolean
  inputBinding:
    prefix: --min-del
- id: min_ins
  doc: Minimum number of inserted bases
  type: boolean
  inputBinding:
    prefix: --min-ins
- id: min_length
  doc: Minimum read length (after base-quality trimming)
  type: boolean
  inputBinding:
    prefix: --min-length
- id: motif
  doc: Motif file
  type: boolean
  inputBinding:
    prefix: --motif
- id: read_group
  doc: Limit to just a single read group
  type: boolean
  inputBinding:
    prefix: --read-group
- id: include_aln_flag
  doc: Flags to include (like samtools -f)
  type: boolean
  inputBinding:
    prefix: --include-aln-flag
- id: exclude_aln_flag
  doc: Flags to exclude (like samtools -F)
  type: boolean
  inputBinding:
    prefix: --exclude-aln-flag
outputs: []
cwlVersion: v1.1
baseCommand:
- variant
