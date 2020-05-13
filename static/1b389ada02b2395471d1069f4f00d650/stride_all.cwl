class: CommandLineTool
id: stride_all.cwl
inputs:
- id: read_length
  doc: median read length (if there are multiple libraries, set to the max read length)
  type: string
  inputBinding:
    prefix: --read-length
- id: insert_size
  doc: median insert size (if there are multiple libraries, set to the max insert
    size)
  type: string
  inputBinding:
    prefix: --insert-size
- id: thread
  doc: 'number of threads (default: 16)'
  type: string
  inputBinding:
    prefix: --thread
- id: pe_mode
  doc: 1 - paired reads are separated with the first read in READS1 and the second
    read in READS2 of the same library (default)  2 - paired reads are interleaved
    within a single file of the same library.
  type: long
  inputBinding:
    prefix: --pe-mode
- id: km_er_size
  doc: 'length of kmer (default: 31)'
  type: string
  inputBinding:
    prefix: --kmer-size
- id: km_er_threshold
  doc: 'kmer frequency cutoff (default: 3)'
  type: string
  inputBinding:
    prefix: --kmer-threshold
- id: min_overlap
  doc: 'minimum reliable overlap length (default: read length * 0.8)'
  type: string
  inputBinding:
    prefix: --min-overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- stride
- all
