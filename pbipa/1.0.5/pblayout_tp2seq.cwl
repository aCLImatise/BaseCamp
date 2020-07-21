class: CommandLineTool
id: ../../../pblayout_tp2seq.cwl
inputs:
- id: use_seq_ids
  doc: The input tiling path contains sequence IDs instead of read names.
  type: boolean
  inputBinding:
    prefix: --use-seq-ids
- id: use_hpc
  doc: Assumes that the input tiling paths were constructed in the homopolymer-compressed
    space, and expands the sequences during sequence construction.
  type: boolean
  inputBinding:
    prefix: --use-hpc
- id: realign
  doc: Realigns the tiling path edges to improve tiling coordinates.
  type: boolean
  inputBinding:
    prefix: --realign
- id: batch_mb
  doc: INT   Batch size in Mbp. Reads for a batch of contigs are loaded at once so
    that all reads total in roughly this size. [1000]
  type: boolean
  inputBinding:
    prefix: --batch-mb
- id: num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_reads_fn
  doc: STR   Path to a SeqDB file with reads which will be used to compose the sequences.
  type: string
  inputBinding:
    position: 0
- id: in_tiling_path_fn
  doc: STR   Path to a TilingPath file.
  type: string
  inputBinding:
    position: 1
- id: out_fn
  doc: STR   Output FASTA filename.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pblayout
- tp2seq
