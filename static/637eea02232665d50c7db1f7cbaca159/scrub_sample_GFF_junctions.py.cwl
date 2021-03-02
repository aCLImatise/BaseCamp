class: CommandLineTool
id: scrub_sample_GFF_junctions.py.cwl
inputs:
- id: in_min_sample
  doc: 'Minimum number of samples as evidence (default: 1)'
  type: long?
  inputBinding:
    prefix: --min_sample
- id: in_min_transcript
  doc: 'Minimum number of transcripts as evidence (default: 2)'
  type: long?
  inputBinding:
    prefix: --min_transcript
- id: in_scrubbed_junction_file
  doc: "Scrubbed junction bed --- if given, directly use it to\nscrub GFFs.\n"
  type: File?
  inputBinding:
    prefix: --scrubbed_junction_file
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_sample_config
  doc: summary_report
  type: string
  inputBinding:
    position: 1
- id: in_optional_arguments
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scrub_sample_GFF_junctions.py
