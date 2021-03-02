class: CommandLineTool
id: iCount_rnamaps.cwl
inputs:
- id: in_implicit_handling
  doc: "Can be 'closest' or 'split'. In case of implicit read - split score to\nboth\
    \ neighbours or give it just to the closest neighbour (default: closest)"
  type: boolean?
  inputBinding:
    prefix: --implicit_handling
- id: in_mismatches
  doc: "Reads on same position with random barcode differing less than\n``mismatches``\
    \ are grouped together (default: 2)"
  type: boolean?
  inputBinding:
    prefix: --mismatches
- id: in_mapq_th
  doc: 'Ignore hits with MAPQ < mapq_th (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --mapq_th
- id: in_holesize_th
  doc: "Raeads with size of holes less than holesize_th are treted as if they\nwould\
    \ have no holes (default: 4)"
  type: boolean?
  inputBinding:
    prefix: --holesize_th
- id: in_stdout_log
  doc: Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --stdout_log
- id: in_file_log
  doc: Threshold value (0-50) for logging to file. If 0, logging to file if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --file_log
- id: in_file_log_path
  doc: Path to log file.
  type: boolean?
  inputBinding:
    prefix: --file_logpath
- id: in_results_file
  doc: File into which to store Metrics.
  type: boolean?
  inputBinding:
    prefix: --results_file
- id: in_rna_map_type
  doc: position    all     explicit
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: BAM file with alligned reads
  type: string
  inputBinding:
    position: 0
- id: in_segmentation
  doc: "GTF file with segmentation. Should be a file produced by function\n`get_regions`"
  type: string
  inputBinding:
    position: 1
- id: in_out_file
  doc: Output file with analysis results
  type: string
  inputBinding:
    position: 2
- id: in_strange
  doc: File with strange propertieas obtained when processing bam file
  type: string
  inputBinding:
    position: 3
- id: in_cross_transcript
  doc: File with reads spanning over multiple transcripts or multiple genes
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- rnamaps
