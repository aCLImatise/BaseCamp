class: CommandLineTool
id: scrub_sample_GFF_junctions.py.cwl
inputs:
- id: in_min_sample
  doc: 'Minimum number of samples as evidence (default: 1)'
  type: long
  inputBinding:
    prefix: --min_sample
- id: in_min_transcript
  doc: 'Minimum number of transcripts as evidence (default: 2)'
  type: long
  inputBinding:
    prefix: --min_transcript
- id: in_scrubbed_junction_file
  doc: "Scrubbed junction bed --- if given, directly use it to\nscrub GFFs.\n"
  type: File
  inputBinding:
    prefix: --scrubbed_junction_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scrub_sample_GFF_junctions.py
