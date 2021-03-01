class: CommandLineTool
id: pblayout_variants.cwl
inputs:
- id: in_alias_seq_db
  doc: STR   If provided, read names will be looked up in the SeqDB index cache to
    determine their
  type: boolean?
  inputBinding:
    prefix: --alias-seqdb
- id: in_max_in_del_len
  doc: "INT   Indels above this length will be masked and not used for error correction\
    \ and variant\ncalling, and they won't contribute to the consensus. [10000000]"
  type: boolean?
  inputBinding:
    prefix: --max-indel-len
- id: in_min_coverage
  doc: INT   Minimum coverage of a pile for phasing. [6]
  type: boolean?
  inputBinding:
    prefix: --min-coverage
- id: in_max_alleles
  doc: "INT   Ignore variant sites with more alleles than this value. If <= 0 no thresholding\
    \ is\napplied. [2]"
  type: boolean?
  inputBinding:
    prefix: --max-alleles
- id: in_mask_diff_window
  doc: INT   If two or more diffs are within this many bases from each other, mask
    them. [0]
  type: boolean?
  inputBinding:
    prefix: --mask-diff-window
- id: in_num_rss_iterations
  doc: INT   Number of times to repeat NumRss beyond the first. [0]
  type: boolean?
  inputBinding:
    prefix: --num-rss-iterations
- id: in_phase
  doc: Run the phasing. Write <out_prefix>.keepers.ovl and .scraps.ovl
  type: boolean?
  inputBinding:
    prefix: --phase
- id: in_batch
  doc: INT   Number of piles to load in a batch. [1000]
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_write_rss_ascii
  doc: Write the read similarity scores in ASCII format instead of binary.
  type: boolean?
  inputBinding:
    prefix: --write-rss-ascii
- id: in_debug_verbose
  doc: Prints out extremely verbose debug information.
  type: boolean?
  inputBinding:
    prefix: --debug-verbose
- id: in_prefix
  doc: "STR   Prefix of the output files. Two files will be written: {out_prefix}.ovl\
    \ and\n{out_prefix}.(ascii|binary).rss [pblayout]"
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
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
- id: in_in_fn
  doc: STR   Path to a file in IPAOvl format.
  type: string
  inputBinding:
    position: 0
- id: in_ids_dot
  doc: --min-allele-count    INT   Maximum number of times a diff can occur in a pile
    to call it an error. Threshold is
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
- pblayout
- variants
