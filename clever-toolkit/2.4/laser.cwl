#!/usr/bin/env cwl-runner

baseCommand:
- laser
class: CommandLineTool
cwlVersion: v1.0
id: laser
inputs:
- doc: Be more sensitive (at the expense of runtime).
  id: extra_sensitive
  inputBinding:
    prefix: --extra-sensitive
  type: boolean
- doc: Threads.
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: 'Maximum deletion length to look for (default: 1000 in regular mode, 10000
    when using --extra-sensitive).'
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: 'Length of alignment seeds to be mapped by external read mapper (BWA), default:
    40.'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: Filename of FASTQ file with split reads (if not given, a temporary such file
    be produced).
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: Directory to use for temporary files (if not given, system default is used).
  id: tmpdir
  inputBinding:
    prefix: --tmpdir
  type: string
- doc: Additional options to pass on to LASER core algorithm. Call "laser-core" without
    parameters for a list of options.
  id: core_options
  inputBinding:
    prefix: --core-options
  type: string
- doc: Additional options to pass on to LASER's recalibration algorithm. Call "laser-recalibrate"
    without parameters for a list of options.
  id: recal_options
  inputBinding:
    prefix: --recal-options
  type: string
- doc: Minimum expected support for a SNP/indel in order to be written to file with
    putative variations. These SNPs/indels will be used for recalibration of alignment
    scores.
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: 'Keep BAM file produced by laser-core. Default: only keep BAM after recalibration.'
  id: keep_raw_bam
  inputBinding:
    prefix: --keep_raw_bam
  type: boolean
- doc: Include secondary alignments in the BAM file.
  id: secondary
  inputBinding:
    prefix: --secondary
  type: boolean
- doc: 'Encode secondary alignments in XA tags (default: separate lines).'
  id: x_a
  inputBinding:
    prefix: --xa
  type: boolean
- doc: Use X/= in CIGAR strings instead of M.
  id: adv_cigar
  inputBinding:
    prefix: --adv-cigar
  type: boolean
- doc: Skip recalibration step.
  id: dont_recalibrate
  inputBinding:
    prefix: --dont-recalibrate
  type: boolean
- doc: Look for interchromosomal read pairs and for interchromosomal split reads.
  id: inter_chromosomal
  inputBinding:
    prefix: --interchromosomal
  type: boolean
