class: CommandLineTool
id: make_cut_matrix.cwl
inputs:
- id: bam_file_of_aligned_reads
  doc: The indexed BAM file containing the aligned ATAC-seq reads.
  type: string
  inputBinding:
    position: 0
- id: bed_file_of_motifs
  doc: The BED file containing the motifs. Use "-" to read from standard input.
  type: string
  inputBinding:
    position: 1
- id: aggregate_output
  doc: Requests a matrix in which each row represents a position in the extended region
    and the mean cut point count at that position across all motifs. See OUTPUT, below.
  type: boolean
  inputBinding:
    prefix: --aggregate-output
- id: discrete_output
  doc: Requests a matrix in which each row represents all the cut point counts around
    one motif. See OUTPUT, below.
  type: boolean
  inputBinding:
    prefix: --discrete-output
- id: bins
  doc: A list of fragment size bin groups and their resolutions. See BINNING, below.
  type: string
  inputBinding:
    prefix: --bins
- id: exclude_flags
  doc: A SAM flag used to exclude alignments from the BAM file. More than one may
    be specified. Alignments matching any exclude flag will not be counted. The default
    is to exclude all unmapped reads/mates by filtering out any alignments with SAM
    flags 4 or 8 set.
  type: string
  inputBinding:
    prefix: --exclude-flags
- id: include_flags
  doc: A SAM flag that determines which alignments from the BAM file will be included
    in the counts. More than one may be specified. Any alignment matching any include
    flag will be counted. The default is to include properly paired and mapped reads
    by filtering for SAM flags 83, 99, 147, or 163.
  type: string
  inputBinding:
    prefix: --include-flags
- id: cut_point_offset
  doc: 'The position of cut points relative to the beginning of a read and in the
    direction toward the read end, as a number of bases (default: 4).'
  type: string
  inputBinding:
    prefix: --cut-point-offset
- id: parallel
  doc: 'The number of parallel scoring processes to use (default: 1).'
  type: string
  inputBinding:
    prefix: --parallel
- id: quality
  doc: 'The minimum mapping quality required for a read to be counted (default: 30).'
  type: string
  inputBinding:
    prefix: --quality
- id: region_extension
  doc: 'The number of bases to score on either side of the motifs (default: 100).'
  type: string
  inputBinding:
    prefix: --region-extension
- id: verbose
  doc: Requests more detailed output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- make_cut_matrix
