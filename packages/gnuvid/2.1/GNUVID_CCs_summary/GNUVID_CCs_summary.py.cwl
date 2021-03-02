class: CommandLineTool
id: GNUVID_CCs_summary.py.cwl
inputs:
- id: in_gnuvidccssummary_summarizes_dbisolatesreport
  doc: GNUVID_CCs_summary summarizes the GNUVID DB_isolates_report
  type: string
  inputBinding:
    position: 0
- id: in_inactive_date
  doc: "an inactive date cutoff, usually 1 month before release\ndate, in this format\
    \ (2020-06-03) to assign status"
  type: string
  inputBinding:
    position: 0
- id: in_quiet_date
  doc: "a quiet date cutoff, usually 2 weeks before release\ndate, in this format\
    \ (2020-06-03) to assign status"
  type: string
  inputBinding:
    position: 1
- id: in_defining_snps
  doc: tab-separated file of CC, SNPs and GISAID clade (.txt)
  type: string
  inputBinding:
    position: 2
- id: in_gnuviddbisolatesreport_analyze_has
  doc: "GNUVID_DB_isolates_report to analyze that has STs and\nCCs (.txt)"
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.1--0
cwlVersion: v1.1
baseCommand:
- GNUVID_CCs_summary.py
