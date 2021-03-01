class: CommandLineTool
id: abruijn.cwl
inputs:
- id: in_debug
  doc: enable debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_resume
  doc: try to resume previous assembly
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_threads
  doc: 'number of parallel threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_iterations
  doc: 'number of polishing iterations (default: 1)'
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_platform
  doc: 'sequencing platform (default: pacbio)'
  type: string?
  inputBinding:
    prefix: --platform
- id: in_km_er_size
  doc: 'kmer size (default: auto)'
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_min_overlap
  doc: 'minimum overlap between reads (default: 5000)'
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_min_coverage
  doc: 'minimum kmer coverage (default: auto)'
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_max_coverage
  doc: 'maximum kmer coverage (default: auto)'
  type: long?
  inputBinding:
    prefix: --max-coverage
- id: in_reads
  doc: path to reads file (FASTA format)
  type: string
  inputBinding:
    position: 0
- id: in_out_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abruijn
