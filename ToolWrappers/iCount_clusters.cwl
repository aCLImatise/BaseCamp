class: CommandLineTool
id: iCount_clusters.cwl
inputs:
- id: in_dist
  doc: 'Distance between two peaks to merge into same cluster (default: 20)'
  type: boolean
  inputBinding:
    prefix: --dist
- id: in_slop
  doc: 'Distance between site and cluster to assign site to cluster (default: 3)'
  type: boolean
  inputBinding:
    prefix: --slop
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
- id: in_sites
  doc: Path to input BED6 file with sites
  type: string
  inputBinding:
    position: 0
- id: in_peaks
  doc: Path to input BED6 file with peaks (or clusters)
  type: string
  inputBinding:
    position: 1
- id: in_clusters
  doc: Path to output BED6 file with merged peaks (clusters)
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iCount
- clusters
