class: CommandLineTool
id: alignmentSieve.cwl
inputs:
- id: alignment_sieve_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '10'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam
  doc: An indexed BAM file.
  type: File
  inputBinding:
    prefix: --bam
- id: outfile
  doc: The file to write results to. These are the alignments or fragments that pass
    the filtering criteria.
  type: string
  inputBinding:
    prefix: --outFile
- id: number_of_processors
  doc: 'Number of processors to use. Type "max/2" to use half the maximum number of
    processors or "max" to use all available processors. (Default: 1)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: filter_metrics
  doc: The number of entries in total and filtered are saved to this file
  type: File
  inputBinding:
    prefix: --filterMetrics
- id: filtered_out_reads
  doc: If desired, all reads NOT passing the filtering criteria can be written to
    this file.
  type: string
  inputBinding:
    prefix: --filteredOutReads
- id: label
  doc: User defined label instead of the default label (file name).
  type: string
  inputBinding:
    prefix: --label
- id: smart_labels
  doc: Instead of manually specifying a labels for the input file, this causes deepTools
    to use the file name after removing the path and extension.
  type: boolean
  inputBinding:
    prefix: --smartLabels
- id: verbose
  doc: Set to see processing messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: shift
  doc: Shift the left and right end of a read (for BAM files) or a fragment (for BED
    files). A positive value shift an end to the right (on the + strand) and a negative
    value shifts a fragment to the left. Either 2 or 4 integers can be provided. For
    example, "2 -3" will shift the left-most fragment end two bases to the right and
    the right-most end 3 bases to the left. If 4 integers are provided, then the first
    and last two refer to fragments whose read 1 is on the left or right, respectively.
    Consequently, it is possible to take strand into consideration for strand-specific
    protocols. A fragment whose length falls below 1 due to shifting will not be written
    to the output. See the online documentation for graphical examples. Note that
    non-properly-paired reads will be filtered.
  type: string[]
  inputBinding:
    prefix: --shift
- id: atac_shift
  doc: Shift the produced BAM file or BEDPE regions as commonly done for ATAC-seq.
    This is equivalent to --shift 4 -5 5 -4.
  type: boolean
  inputBinding:
    prefix: --ATACshift
- id: bed
  doc: Instead of producing BAM files, write output in BEDPE format (as defined by
    MACS2). Note that only reads/fragments passing filtering criterion are written
    in BEDPE format.
  type: boolean
  inputBinding:
    prefix: --BED
- id: min_fragment_length
  doc: 'The minimum fragment length needed for read/pair inclusion. This option is
    primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome
    fragments. (Default: 0)'
  type: long
  inputBinding:
    prefix: --minFragmentLength
- id: max_fragment_length
  doc: 'The maximum fragment length needed for read/pair inclusion. A value of 0 indicates
    no limit. (Default: 0)'
  type: long
  inputBinding:
    prefix: --maxFragmentLength
outputs: []
cwlVersion: v1.1
baseCommand:
- alignmentSieve
