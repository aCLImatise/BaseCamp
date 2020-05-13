class: CommandLineTool
id: abruijn.cwl
inputs:
- id: debug
  doc: enable debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: resume
  doc: try to resume previous assembly
  type: boolean
  inputBinding:
    prefix: --resume
- id: threads
  doc: 'number of parallel threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: iterations
  doc: 'number of polishing iterations (default: 1)'
  type: string
  inputBinding:
    prefix: --iterations
- id: platform
  doc: 'sequencing platform (default: pacbio)'
  type: string
  inputBinding:
    prefix: --platform
- id: km_er_size
  doc: 'kmer size (default: auto)'
  type: string
  inputBinding:
    prefix: --kmer-size
- id: min_overlap
  doc: 'minimum overlap between reads (default: 5000)'
  type: long
  inputBinding:
    prefix: --min-overlap
- id: min_coverage
  doc: 'minimum kmer coverage (default: auto)'
  type: long
  inputBinding:
    prefix: --min-coverage
- id: max_coverage
  doc: 'maximum kmer coverage (default: auto)'
  type: long
  inputBinding:
    prefix: --max-coverage
outputs: []
cwlVersion: v1.1
baseCommand:
- abruijn
