class: CommandLineTool
id: kodoja_search.py.cwl
inputs:
- id: output_dir
  doc: Output directory path, required
  type: string
  inputBinding:
    prefix: --output_dir
- id: kraken_db
  doc: Kraken database path, required
  type: string
  inputBinding:
    prefix: --kraken_db
- id: kaiju_db
  doc: Kaiju database path, required
  type: string
  inputBinding:
    prefix: --kaiju_db
- id: read_1
  doc: Read 1 file path, required
  type: string
  inputBinding:
    prefix: --read1
- id: read_2
  doc: Read 2 file path
  type: string
  inputBinding:
    prefix: --read2
- id: data_format
  doc: Sequence data format (default fastq)
  type: string
  inputBinding:
    prefix: --data_format
- id: threads
  doc: Number of threads (default 1)
  type: string
  inputBinding:
    prefix: --threads
- id: host_subset
  doc: Subset sequences with this tax id from results
  type: string
  inputBinding:
    prefix: --host_subset
- id: trim_min_len
  doc: Trimmomatic minimum length
  type: string
  inputBinding:
    prefix: --trim_minlen
- id: trim_adapt
  doc: Illumina adapter sequence file
  type: string
  inputBinding:
    prefix: --trim_adapt
- id: kraken_quick
  doc: Number of minium hits by Kraken
  type: string
  inputBinding:
    prefix: --kraken_quick
- id: kraken_preload
  doc: Kraken preload database
  type: boolean
  inputBinding:
    prefix: --kraken_preload
- id: kaiju_score
  doc: Kaju alignment score
  type: string
  inputBinding:
    prefix: --kaiju_score
- id: kaiju_min_len
  doc: Kaju minimum length
  type: string
  inputBinding:
    prefix: --kaiju_minlen
- id: kaiju_mismatch
  doc: Kaju allowed mismatches
  type: string
  inputBinding:
    prefix: --kaiju_mismatch
outputs: []
cwlVersion: v1.1
baseCommand:
- kodoja_search.py
