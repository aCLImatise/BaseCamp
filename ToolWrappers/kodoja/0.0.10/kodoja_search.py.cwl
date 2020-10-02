class: CommandLineTool
id: kodoja_search.py.cwl
inputs:
- id: in_output_dir
  doc: Output directory path, required
  type: File
  inputBinding:
    prefix: --output_dir
- id: in_kraken_db
  doc: Kraken database path, required
  type: File
  inputBinding:
    prefix: --kraken_db
- id: in_kaiju_db
  doc: Kaiju database path, required
  type: File
  inputBinding:
    prefix: --kaiju_db
- id: in_read_one
  doc: Read 1 file path, required
  type: long
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: Read 2 file path
  type: long
  inputBinding:
    prefix: --read2
- id: in_data_format
  doc: Sequence data format (default fastq)
  type: string
  inputBinding:
    prefix: --data_format
- id: in_threads
  doc: Number of threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_host_subset
  doc: Subset sequences with this tax id from results
  type: string
  inputBinding:
    prefix: --host_subset
- id: in_trim_min_len
  doc: Trimmomatic minimum length
  type: long
  inputBinding:
    prefix: --trim_minlen
- id: in_trim_adapt
  doc: Illumina adapter sequence file
  type: File
  inputBinding:
    prefix: --trim_adapt
- id: in_kraken_quick
  doc: Number of minium hits by Kraken
  type: long
  inputBinding:
    prefix: --kraken_quick
- id: in_kraken_preload
  doc: Kraken preload database
  type: boolean
  inputBinding:
    prefix: --kraken_preload
- id: in_kaiju_score
  doc: Kaju alignment score
  type: string
  inputBinding:
    prefix: --kaiju_score
- id: in_kaiju_min_len
  doc: Kaju minimum length
  type: long
  inputBinding:
    prefix: --kaiju_minlen
- id: in_kaiju_mismatch
  doc: Kaju allowed mismatches
  type: string
  inputBinding:
    prefix: --kaiju_mismatch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory path, required
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- kodoja_search.py
