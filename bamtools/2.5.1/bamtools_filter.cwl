class: CommandLineTool
id: bamtools_filter.cwl
inputs:
- id: in
  doc: the input BAM file(s) [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: list
  doc: the input BAM file list, one line per file
  type: File
  inputBinding:
    prefix: -list
- id: out
  doc: the output BAM file [stdout]
  type: string
  inputBinding:
    prefix: -out
- id: region
  doc: only read data from this genomic region (see documentation for more details)
  type: string
  inputBinding:
    prefix: -region
- id: script
  doc: the filter script file (see documentation for more details)
  type: File
  inputBinding:
    prefix: -script
- id: force_compression
  doc: if results are sent to stdout (like when piping to another tool), default behavior
    is to leave output uncompressed. Use this flag to override and force compression
  type: boolean
  inputBinding:
    prefix: -forceCompression
- id: alignment_flag
  doc: keep reads with this *exact* alignment flag (for more detailed queries, see
    below)
  type: long
  inputBinding:
    prefix: -alignmentFlag
- id: insert_size
  doc: keep reads with insert size that matches pattern
  type: long
  inputBinding:
    prefix: -insertSize
- id: length
  doc: keep reads with length that matches pattern
  type: long
  inputBinding:
    prefix: -length
- id: map_quality
  doc: <[0-255]>             keep reads with map quality that matches pattern
  type: boolean
  inputBinding:
    prefix: -mapQuality
- id: name
  doc: keep reads with name that matches pattern
  type: string
  inputBinding:
    prefix: -name
- id: query_bases
  doc: keep reads with motif that matches pattern
  type: string
  inputBinding:
    prefix: -queryBases
- id: tag
  doc: <TAG:VALUE>                  keep reads with this key=>value pair
  type: boolean
  inputBinding:
    prefix: -tag
- id: is_duplicate
  doc: <true/false>         keep only alignments that are marked as duplicate? [true]
  type: boolean
  inputBinding:
    prefix: -isDuplicate
- id: is_failed_qc
  doc: <true/false>          keep only alignments that failed QC? [true]
  type: boolean
  inputBinding:
    prefix: -isFailedQC
- id: is_first_mate
  doc: <true/false>         keep only alignments marked as first mate? [true]
  type: boolean
  inputBinding:
    prefix: -isFirstMate
- id: is_mapped
  doc: <true/false>            keep only alignments that were mapped? [true]
  type: boolean
  inputBinding:
    prefix: -isMapped
- id: is_mate_mapped
  doc: <true/false>        keep only alignments with mates that mapped [true]
  type: boolean
  inputBinding:
    prefix: -isMateMapped
- id: is_mate_reverse_strand
  doc: <true/false> keep only alignments with mate on reverese strand? [true]
  type: boolean
  inputBinding:
    prefix: -isMateReverseStrand
- id: is_paired
  doc: <true/false>            keep only alignments that were sequenced as paired?
    [true]
  type: boolean
  inputBinding:
    prefix: -isPaired
- id: is_primary_alignment
  doc: <true/false>  keep only alignments marked as primary? [true]
  type: boolean
  inputBinding:
    prefix: -isPrimaryAlignment
- id: is_proper_pair
  doc: <true/false>        keep only alignments that passed PE resolution? [true]
  type: boolean
  inputBinding:
    prefix: -isProperPair
- id: is_reverse_strand
  doc: <true/false>     keep only alignments on reverse strand? [true]
  type: boolean
  inputBinding:
    prefix: -isReverseStrand
- id: is_second_mate
  doc: <true/false>        keep only alignments marked as second mate? [true]
  type: boolean
  inputBinding:
    prefix: -isSecondMate
- id: is_singleton
  doc: <true/false>         keep only singletons [true]
  type: boolean
  inputBinding:
    prefix: -isSingleton
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- filter
