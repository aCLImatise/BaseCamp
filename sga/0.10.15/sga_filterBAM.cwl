class: CommandLineTool
id: sga_filterBAM.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: as_qg
  doc: load an asqg file and filter pairs that are shorter than --max-distance
  type: File
  inputBinding:
    prefix: --asqg
- id: max_distance
  doc: search the graph for a path completing the mate-pair fragment. If the path
    is less than LEN then the pair will be discarded.
  type: string
  inputBinding:
    prefix: --max-distance
- id: error_rate
  doc: 'filter out pairs where one read has an error rate higher than F (default:
    no filter)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: min_quality
  doc: 'filter out pairs where one read has mapping quality less than F (default:
    10)'
  type: string
  inputBinding:
    prefix: --min-quality
- id: out_bam
  doc: write the filtered reads to FILE
  type: File
  inputBinding:
    prefix: --out-bam
- id: prefix
  doc: load the FM-index with prefix STR
  type: string
  inputBinding:
    prefix: --prefix
- id: max_km_er_depth
  doc: filter out pairs that contain a kmer that has been seen in the FM-index more
    than N times
  type: string
  inputBinding:
    prefix: --max-kmer-depth
- id: mate_contamination
  doc: filter out pairs aligning with FR orientation, which may be contiminates in
    a mate pair library
  type: boolean
  inputBinding:
    prefix: --mate-contamination
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- filterBAM
