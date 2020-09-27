class: CommandLineTool
id: sga_filterBAM.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_as_qg
  doc: load an asqg file and filter pairs that are shorter than --max-distance
  type: File
  inputBinding:
    prefix: --asqg
- id: in_max_distance
  doc: "search the graph for a path completing the mate-pair fragment. If the path\
    \ is less than LEN\nthen the pair will be discarded."
  type: long
  inputBinding:
    prefix: --max-distance
- id: in_error_rate
  doc: 'filter out pairs where one read has an error rate higher than F (default:
    no filter)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: in_min_quality
  doc: 'filter out pairs where one read has mapping quality less than F (default:
    10)'
  type: long
  inputBinding:
    prefix: --min-quality
- id: in_out_bam
  doc: write the filtered reads to FILE
  type: File
  inputBinding:
    prefix: --out-bam
- id: in_prefix
  doc: load the FM-index with prefix STR
  type: string
  inputBinding:
    prefix: --prefix
- id: in_max_km_er_depth
  doc: filter out pairs that contain a kmer that has been seen in the FM-index more
    than N times
  type: long
  inputBinding:
    prefix: --max-kmer-depth
- id: in_mate_contamination
  doc: filter out pairs aligning with FR orientation, which may be contiminates in
    a mate pair library
  type: boolean
  inputBinding:
    prefix: --mate-contamination
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- filterBAM
