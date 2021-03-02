class: CommandLineTool
id: bamtools_2.4.1_filter.cwl
inputs:
- id: in_in
  doc: the input BAM file(s) [stdin]
  type: File?
  inputBinding:
    prefix: -in
- id: in_list
  doc: "the input BAM file list, one\nline per file"
  type: File?
  inputBinding:
    prefix: -list
- id: in_out
  doc: the output BAM file [stdout]
  type: File?
  inputBinding:
    prefix: -out
- id: in_region
  doc: "only read data from this\ngenomic region (see documentation for more\ndetails)"
  type: string?
  inputBinding:
    prefix: -region
- id: in_script
  doc: "the filter script file (see\ndocumentation for more details)"
  type: File?
  inputBinding:
    prefix: -script
- id: in_force_compression
  doc: "if results are sent to stdout\n(like when piping to another tool),\ndefault\
    \ behavior is to leave output\nuncompressed. Use this flag to override\nand force\
    \ compression"
  type: boolean?
  inputBinding:
    prefix: -forceCompression
- id: in_alignment_flag
  doc: "keep reads with this *exact*\nalignment flag (for more detailed queries,\n\
    see below)"
  type: long?
  inputBinding:
    prefix: -alignmentFlag
- id: in_insert_size
  doc: "keep reads with insert size\nthat matches pattern"
  type: long?
  inputBinding:
    prefix: -insertSize
- id: in_length
  doc: "keep reads with length that\nmatches pattern"
  type: long?
  inputBinding:
    prefix: -length
- id: in_map_quality
  doc: "<[0-255]>             keep reads with map quality\nthat matches pattern"
  type: boolean?
  inputBinding:
    prefix: -mapQuality
- id: in_name
  doc: "keep reads with name that\nmatches pattern"
  type: string?
  inputBinding:
    prefix: -name
- id: in_query_bases
  doc: "keep reads with motif that\nmatches pattern"
  type: string?
  inputBinding:
    prefix: -queryBases
- id: in_tag
  doc: "<TAG:VALUE>                  keep reads with this\nkey=>value pair"
  type: boolean?
  inputBinding:
    prefix: -tag
- id: in_is_duplicate
  doc: "keep only alignments that are\nmarked as duplicate? [true]"
  type: string?
  inputBinding:
    prefix: -isDuplicate
- id: in_is_failed_qc
  doc: "keep only alignments that\nfailed QC? [true]"
  type: string?
  inputBinding:
    prefix: -isFailedQC
- id: in_is_first_mate
  doc: "keep only alignments marked as\nfirst mate? [true]"
  type: string?
  inputBinding:
    prefix: -isFirstMate
- id: in_is_mapped
  doc: "keep only alignments that were\nmapped? [true]"
  type: string?
  inputBinding:
    prefix: -isMapped
- id: in_is_mate_mapped
  doc: "keep only alignments with\nmates that mapped [true]"
  type: string?
  inputBinding:
    prefix: -isMateMapped
- id: in_is_mate_reverse_strand
  doc: "keep only alignments with mate\non reverese strand? [true]"
  type: string?
  inputBinding:
    prefix: -isMateReverseStrand
- id: in_is_paired
  doc: "keep only alignments that were\nsequenced as paired? [true]"
  type: string?
  inputBinding:
    prefix: -isPaired
- id: in_is_primary_alignment
  doc: "keep only alignments marked as\nprimary? [true]"
  type: string?
  inputBinding:
    prefix: -isPrimaryAlignment
- id: in_is_proper_pair
  doc: "keep only alignments that\npassed PE resolution? [true]"
  type: string?
  inputBinding:
    prefix: -isProperPair
- id: in_is_reverse_strand
  doc: "keep only alignments on\nreverse strand? [true]"
  type: string?
  inputBinding:
    prefix: -isReverseStrand
- id: in_is_second_mate
  doc: "keep only alignments marked as\nsecond mate? [true]"
  type: string?
  inputBinding:
    prefix: -isSecondMate
- id: in_is_singleton
  doc: keep only singletons [true]
  type: string?
  inputBinding:
    prefix: -isSingleton
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output BAM file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- filter
