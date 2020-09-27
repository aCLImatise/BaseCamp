class: CommandLineTool
id: peakzilla.py.cwl
inputs:
- id: in_model_peaks
  doc: "number of most highly enriched regions used to\nestimate peak size: default\
    \ = 200"
  type: long
  inputBinding:
    prefix: --model_peaks
- id: in_enrichment_cut_off
  doc: 'minimum cutoff for fold enrichment: default = 2'
  type: long
  inputBinding:
    prefix: --enrichment_cutoff
- id: in_score_cut_off
  doc: 'minimum cutoff for peak score: default = 1'
  type: long
  inputBinding:
    prefix: --score_cutoff
- id: in_fragment_size
  doc: "manually set fragment size in bp: default = estimate\nfrom data"
  type: long
  inputBinding:
    prefix: --fragment_size
- id: in_gaussian
  doc: use empirical model estimate instead of gaussian
  type: boolean
  inputBinding:
    prefix: --gaussian
- id: in_bed_pe
  doc: input is paired end and in BEDPE format
  type: boolean
  inputBinding:
    prefix: --bedpe
- id: in_log
  doc: 'directory/filename to store log file to: default ='
  type: File
  inputBinding:
    prefix: --log
- id: in_log_dot_txt
  doc: -n, --negative        write negative peaks to negative_peaks.tsv
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- peakzilla.py
