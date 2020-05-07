class: CommandLineTool
id: deblur_remove_artifacts.cwl
inputs:
- id: ref_fp
  doc: 'Keep all sequences aligning to this FASTA database (for multiple databases,
    use --ref- fp db1.fa --ref-fp db2.fa ..) default for positive filtering is: /tmp/tmpr8qmos2l/lib/python3.6/site-
    packages/deblur/support_files/88_otus.fasta default for negative filtering is:
    /tmp/tmpr8qmos2l/lib/python3.6/site- packages/deblur/support_files/artifacts.fa'
  type: File
  inputBinding:
    prefix: --ref-fp
- id: ref_db_fp
  doc: Keep all sequences aligning to this indexed database. For multiple databases,
    the order must follow that of --ref-fp, for example, --ref-db-fp db1.idx --ref-db-fp
    db2.idx ..
  type: File
  inputBinding:
    prefix: --ref-db-fp
- id: negate
  doc: '/ --only-pos       Use --negate (i.e. True) to discard all sequences aligning
    to the database passed via --neg-ref-fp option. Alternatively, use --only-pos
    (i.e. False) to filter by only keeping sequences similar to ones in --pos- ref-fp.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --negate
- id: threads_per_sample
  doc: 'Number of threads to use per sample (0 to use all)  [default: 1]'
  type: long
  inputBinding:
    prefix: --threads-per-sample
- id: log_level
  doc: 'RANGE       Level of messages for log file(range 1-debug to 5-critical  [default:
    2]'
  type: long
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- remove-artifacts
