class: CommandLineTool
id: scrub_sample_GFF_junctions.py.cwl
inputs:
- id: min_sample
  doc: 'Minimum number of samples as evidence (default: 1)'
  type: long
  inputBinding:
    prefix: --min_sample
- id: min_transcript
  doc: 'Minimum number of transcripts as evidence (default: 2)'
  type: long
  inputBinding:
    prefix: --min_transcript
- id: scrubbed_junction_file
  doc: Scrubbed junction bed --- if given, directly use it to scrub GFFs.
  type: string
  inputBinding:
    prefix: --scrubbed_junction_file
outputs: []
cwlVersion: v1.1
baseCommand:
- scrub_sample_GFF_junctions.py
