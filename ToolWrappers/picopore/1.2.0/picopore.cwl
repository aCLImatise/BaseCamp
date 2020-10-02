class: CommandLineTool
id: picopore.cwl
inputs:
- id: in_mode
  doc: choose compression mode
  type: string
  inputBinding:
    prefix: --mode
- id: in_revert
  doc: reverts files to original size (lossless modes only)
  type: boolean
  inputBinding:
    prefix: --revert
- id: in_no_fast_q
  doc: 'retain FASTQ data (raw mode only) (Default: --fastq)'
  type: boolean
  inputBinding:
    prefix: --no-fastq
- id: in_no_summary
  doc: "retain summary data (raw mode only) (Default: --no-\nsummary)"
  type: boolean
  inputBinding:
    prefix: --no-summary
- id: in_manual
  doc: "manually remove only groups whose paths contain STR\n(raw mode only, regular\
    \ expressions permitted,\noverrides defaults)"
  type: string
  inputBinding:
    prefix: --manual
- id: in_skip_confirm_step
  doc: skip confirm step
  type: boolean
  inputBinding:
    prefix: -y
- id: in_threads
  doc: 'number of threads (Default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_prefix
  doc: add prefix to output files to prevent overwrite
  type: string
  inputBinding:
    prefix: --prefix
- id: in_no_skip_root
  doc: "ignore files in root input directories for albacore\nrealtime compression\
    \ (Default: --no-skip-root)"
  type: boolean
  inputBinding:
    prefix: --no-skip-root
- id: in_print_every
  doc: "print a dot every approximately INT files, or -1 to\nsilence (Default: 100)\n"
  type: long
  inputBinding:
    prefix: --print-every
- id: in_pico_pore_real_time
  doc: monitors a directory for new reads and compresses them in real time
  type: string
  inputBinding:
    position: 0
- id: in_pico_pore_test
  doc: compresses to temporary files and checks that all datasets and attributes are
    equal (lossless modes only)
  type: string
  inputBinding:
    position: 1
- id: in_pico_pore_rename
  doc: renames groups and datasets within FAST5 files
  type: string
  inputBinding:
    position: 2
- id: in_input
  doc: list of directories or fast5 files to shrink
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- picopore
