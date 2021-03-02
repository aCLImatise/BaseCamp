class: CommandLineTool
id: pancake_seqfetch.cwl
inputs:
- id: in_out_fmt
  doc: "STR   Output format. If an input file is FASTA and out format is FASTQ, dummy\
    \ QVs\nwill be added. Valid choices: (fasta, fastq). [fasta]"
  type: boolean?
  inputBinding:
    prefix: --out-fmt
- id: in_dummy_qv
  doc: "STR   Dummy QV to be added to sequences when input format is FASTA and output\n\
    FASTQ. [!]"
  type: boolean?
  inputBinding:
    prefix: --dummy-qv
- id: in_alias
  doc: "STR   SeqDB file path. If provided, the SeqDB will be used to look-up the\n\
    provided sequences by their IDs."
  type: boolean?
  inputBinding:
    prefix: --alias
- id: in_fail
  doc: Exit non-zero if not all seqs are found.
  type: boolean?
  inputBinding:
    prefix: --fail
- id: in_write_ids
  doc: "The output sequence names will be replaced by their IDs in the SeqDB, if\n\
    the SeqDB was provided as input."
  type: boolean?
  inputBinding:
    prefix: --write-ids
- id: in_use_hpc
  doc: Fetch homopolymer compressed sequences.
  type: boolean?
  inputBinding:
    prefix: --use-hpc
- id: in_use_rle
  doc: "Write a run-length-encoded file alongside to the output file. The RLE file\n\
    contains conversion coordinates from the HPC space to the original space\ninstead\
    \ of the run-length-encoding. This option does not write the HPC\nsequence, for\
    \ that please specify '--user-hpc'."
  type: boolean?
  inputBinding:
    prefix: --use-rle
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_out_fn
  doc: STR   Output file for the fetched sequences.
  type: string
  inputBinding:
    position: 0
- id: in_fetch_list
  doc: STR   List of sequences to fetch, one per line.
  type: string
  inputBinding:
    position: 1
- id: in_formats_dot
  doc: 'Algorithm Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- pancake
- seqfetch
