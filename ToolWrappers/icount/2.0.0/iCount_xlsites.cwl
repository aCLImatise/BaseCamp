class: CommandLineTool
id: iCount_xlsites.cwl
inputs:
- id: in__groupby_assign
  doc: ", --group_by       Assign score of a read to either 'start', 'middle' or 'end'\
    \ nucleotide (default: start)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_quant
  doc: "Report number of 'cDNA' or number of 'reads' (default: cDNA)"
  type: boolean
  inputBinding:
    prefix: --quant
- id: in_segmentation
  doc: 'File with custon segmentation format (obtained by ``iCount segment``) (default:
    None)'
  type: boolean
  inputBinding:
    prefix: --segmentation
- id: in_mis
  doc: ", --mismatches   Reads on same position with random barcode differing less\
    \ than\n``mismatches`` are grouped together (default: 2)"
  type: boolean
  inputBinding:
    prefix: -mis
- id: in_mapq_th
  doc: 'Ignore hits with MAPQ < mapq_th (default: 0)'
  type: boolean
  inputBinding:
    prefix: --mapq_th
- id: in_multimax
  doc: 'Ignore reads, mapped to more than ``multimax`` places (default: 50)'
  type: boolean
  inputBinding:
    prefix: --multimax
- id: in_gap_th
  doc: 'Reads with gaps less than gap_th are treated as if they have no gap (default:
    4)'
  type: boolean
  inputBinding:
    prefix: --gap_th
- id: in_report_progress
  doc: 'Switch to report progress (default: False)'
  type: boolean
  inputBinding:
    prefix: --report_progress
- id: in__stdoutlog_threshold
  doc: ', --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging
    to stdout if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -S
- id: in__filelog_threshold
  doc: ', --file_log       Threshold value (0-50) for logging to file. If 0, logging
    to file if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -F
- id: in__filelogpath_path
  doc: ', --file_logpath   Path to log file.'
  type: boolean
  inputBinding:
    prefix: -P
- id: in__file_store
  doc: ', --results_file   File into which to store Metrics.'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_bam
  doc: Input BAM file with mapped reads
  type: string
  inputBinding:
    position: 0
- id: in_sites_unique
  doc: Output BED6 file to store data from uniquely mapped reads
  type: string
  inputBinding:
    position: 1
- id: in_sites_multi
  doc: Output BED6 file to store data from multi-mapped reads
  type: string
  inputBinding:
    position: 2
- id: in_skipped
  doc: "Output BAM file to store reads that do not map as expected by segmentation\
    \ and\nreference genome sequence. If read's second start does not fall on any\
    \ of\nsegmentation borders, it is considered problematic. If segmentation is not\
    \ provided,\nevery read in two parts with gap longer than gap_th is not used (skipped).\n\
    All such reads are reported to the user for further exploration"
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iCount
- xlsites
