class: CommandLineTool
id: stride_all.cwl
inputs:
- id: in_read_length
  doc: median read length (if there are multiple libraries, set to the max read length)
  type: long
  inputBinding:
    prefix: --read-length
- id: in_insert_size
  doc: median insert size (if there are multiple libraries, set to the max insert
    size)
  type: long
  inputBinding:
    prefix: --insert-size
- id: in_thread
  doc: 'number of threads (default: 16)'
  type: long
  inputBinding:
    prefix: --thread
- id: in_pe_mode
  doc: "1 - paired reads are separated with the first read in READS1 and the second\n\
    read in READS2 of the same library (default)\n2 - paired reads are interleaved\
    \ within a single file of the same library."
  type: long
  inputBinding:
    prefix: --pe-mode
- id: in_km_er_size
  doc: 'length of kmer (default: 31)'
  type: long
  inputBinding:
    prefix: --kmer-size
- id: in_km_er_threshold
  doc: 'kmer frequency cutoff (default: 3)'
  type: long
  inputBinding:
    prefix: --kmer-threshold
- id: in_min_overlap
  doc: 'minimum reliable overlap length (default: read length * 0.8)'
  type: long
  inputBinding:
    prefix: --min-overlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stride
- all
