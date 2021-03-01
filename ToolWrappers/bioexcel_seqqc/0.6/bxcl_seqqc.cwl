class: CommandLineTool
id: bxcl_seqqc.cwl
inputs:
- id: in_files
  doc: F1    Pair of input FastQ files.
  type: long?
  inputBinding:
    prefix: --files
- id: in_outdir
  doc: 'Output directory. (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_tmpdir
  doc: 'Temp directory. (default: system tmp location)'
  type: File?
  inputBinding:
    prefix: --tmpdir
- id: in_threads
  doc: "Max number of threads to use. NOTE: not allstages use\nall threads. (default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_adapt_seq
  doc: "The adapter sequence to be trimmed from the FastQ file.\n(default: Illumina\
    \ TruSeq Universal Adapter)"
  type: File?
  inputBinding:
    prefix: --adaptseq
- id: in_qc_conf
  doc: 'Location of config file. (default: internal config)'
  type: File?
  inputBinding:
    prefix: --qcconf
- id: in_trim
  doc: "The type of trimming to be done on the paired\nsequences: [A]dapter or [Q]uality\
    \ trimming, or\n[F]ull/both. WARNING: For standalone execution of\nruntrim only!\
    \ (default: [F]ull)"
  type: string?
  inputBinding:
    prefix: --trim
- id: in_print_config
  doc: Print example config files to current directory.
  type: boolean?
  inputBinding:
    prefix: --printconfig
- id: in_fone
  doc: ''
  type: long?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory. (default: current directory)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- bxcl_seqqc
