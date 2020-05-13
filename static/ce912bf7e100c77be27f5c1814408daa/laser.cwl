class: CommandLineTool
id: laser.cwl
inputs:
- id: extra_sensitive
  doc: Be more sensitive (at the expense of runtime).
  type: boolean
  inputBinding:
    prefix: --extra-sensitive
- id: t
  doc: Threads.
  type: string
  inputBinding:
    prefix: -T
- id: m
  doc: 'Maximum deletion length to look for (default: 1000 in regular mode, 10000
    when using --extra-sensitive).'
  type: long
  inputBinding:
    prefix: -M
- id: s
  doc: 'Length of alignment seeds to be mapped by external read mapper (BWA), default:
    40.'
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: Filename of FASTQ file with split reads (if not given, a temporary such file
    be produced).
  type: string
  inputBinding:
    prefix: -S
- id: tmpdir
  doc: Directory to use for temporary files (if not given, system default is used).
  type: string
  inputBinding:
    prefix: --tmpdir
- id: core_options
  doc: Additional options to pass on to LASER core algorithm. Call "laser-core" without
    parameters for a list of options.
  type: string
  inputBinding:
    prefix: --core-options
- id: recal_options
  doc: Additional options to pass on to LASER's recalibration algorithm. Call "laser-recalibrate"
    without parameters for a list of options.
  type: string
  inputBinding:
    prefix: --recal-options
- id: w
  doc: Minimum expected support for a SNP/indel in order to be written to file with
    putative variations. These SNPs/indels will be used for recalibration of alignment
    scores.
  type: string
  inputBinding:
    prefix: -w
- id: keep_raw_bam
  doc: 'Keep BAM file produced by laser-core. Default: only keep BAM after recalibration.'
  type: boolean
  inputBinding:
    prefix: --keep_raw_bam
- id: secondary
  doc: Include secondary alignments in the BAM file.
  type: boolean
  inputBinding:
    prefix: --secondary
- id: x_a
  doc: 'Encode secondary alignments in XA tags (default: separate lines).'
  type: boolean
  inputBinding:
    prefix: --xa
- id: adv_cigar
  doc: Use X/= in CIGAR strings instead of M.
  type: boolean
  inputBinding:
    prefix: --adv-cigar
- id: dont_recalibrate
  doc: Skip recalibration step.
  type: boolean
  inputBinding:
    prefix: --dont-recalibrate
- id: inter_chromosomal
  doc: Look for interchromosomal read pairs and for interchromosomal split reads.
  type: boolean
  inputBinding:
    prefix: --interchromosomal
outputs: []
cwlVersion: v1.1
baseCommand:
- laser
