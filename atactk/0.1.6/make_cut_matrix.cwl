#!/usr/bin/env cwl-runner

baseCommand:
- make_cut_matrix
class: CommandLineTool
cwlVersion: v1.0
id: make_cut_matrix
inputs:
- doc: The indexed BAM file containing the aligned ATAC-seq reads.
  id: bam_file_of_aligned_reads
  inputBinding:
    position: 0
  type: string
- doc: The BED file containing the motifs. Use "-" to read from standard input.
  id: bed_file_of_motifs
  inputBinding:
    position: 1
  type: string
- doc: Requests a matrix in which each row represents a position in the extended region
    and the mean cut point count at that position across all motifs. See OUTPUT, below.
  id: aggregate_output
  inputBinding:
    prefix: --aggregate-output
  type: boolean
- doc: Requests a matrix in which each row represents all the cut point counts around
    one motif. See OUTPUT, below.
  id: discrete_output
  inputBinding:
    prefix: --discrete-output
  type: boolean
- doc: A list of fragment size bin groups and their resolutions. See BINNING, below.
  id: bins
  inputBinding:
    prefix: --bins
  type: string
- doc: A SAM flag used to exclude alignments from the BAM file. More than one may
    be specified. Alignments matching any exclude flag will not be counted. The default
    is to exclude all unmapped reads/mates by filtering out any alignments with SAM
    flags 4 or 8 set.
  id: exclude_flags
  inputBinding:
    prefix: --exclude-flags
  type: string
- doc: A SAM flag that determines which alignments from the BAM file will be included
    in the counts. More than one may be specified. Any alignment matching any include
    flag will be counted. The default is to include properly paired and mapped reads
    by filtering for SAM flags 83, 99, 147, or 163.
  id: include_flags
  inputBinding:
    prefix: --include-flags
  type: string
- doc: 'The position of cut points relative to the beginning of a read and in the
    direction toward the read end, as a number of bases (default: 4).'
  id: cut_point_offset
  inputBinding:
    prefix: --cut-point-offset
  type: string
- doc: 'The number of parallel scoring processes to use (default: 1).'
  id: parallel
  inputBinding:
    prefix: --parallel
  type: string
- doc: 'The minimum mapping quality required for a read to be counted (default: 30).'
  id: quality
  inputBinding:
    prefix: --quality
  type: string
- doc: 'The number of bases to score on either side of the motifs (default: 100).'
  id: region_extension
  inputBinding:
    prefix: --region-extension
  type: string
- doc: Requests more detailed output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
