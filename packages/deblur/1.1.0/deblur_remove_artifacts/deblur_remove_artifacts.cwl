class: CommandLineTool
id: deblur_remove_artifacts.cwl
inputs:
- id: in_ref_fp
  doc: "Keep all sequences aligning to this FASTA\ndatabase (for multiple databases,\
    \ use --ref-\nfp db1.fa --ref-fp db2.fa ..) default for\npositive filtering is:\n\
    /usr/local/lib/python3.7/site-\npackages/deblur/support_files/88_otus.fasta\n\
    default for negative filtering is:\n/usr/local/lib/python3.7/site-\npackages/deblur/support_files/artifacts.fa"
  type: File
  inputBinding:
    prefix: --ref-fp
- id: in_ref_db_fp
  doc: "Keep all sequences aligning to this indexed\ndatabase. For multiple databases,\
    \ the order\nmust follow that of --ref-fp, for example,\n--ref-db-fp db1.idx --ref-db-fp\
    \ db2.idx .."
  type: File
  inputBinding:
    prefix: --ref-db-fp
- id: in_negate
  doc: "/ --only-pos       Use --negate (i.e. True) to discard all\nsequences aligning\
    \ to the database passed\nvia --neg-ref-fp option. Alternatively, use\n--only-pos\
    \ (i.e. False) to filter by only\nkeeping sequences similar to ones in --pos-\n\
    ref-fp.  [default: True]"
  type: boolean
  inputBinding:
    prefix: --negate
- id: in_threads_per_sample
  doc: "Number of threads to use per sample (0 to\nuse all)  [default: 1]"
  type: long
  inputBinding:
    prefix: --threads-per-sample
- id: in_log_level
  doc: "RANGE       Level of messages for log file(range 1-debug\nto 5-critical  [default:\
    \ 2]"
  type: long
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
- id: in_seqs_fp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deblur
- remove-artifacts
