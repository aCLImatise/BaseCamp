class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/CanSNPer2.cwl
inputs:
- id: db
  doc: ', --database      CanSNP database'
  type: boolean
  inputBinding:
    prefix: -db
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: save_tree
  doc: Save tree as PDF using ETE3 (default False)
  type: boolean
  inputBinding:
    prefix: --save_tree
- id: no_snp_files
  doc: Don´t save output files.
  type: boolean
  inputBinding:
    prefix: --no_snpfiles
- id: summary
  doc: Output a summary file and tree with all called SNPs not affected by no_snpfiles
  type: boolean
  inputBinding:
    prefix: --summary
- id: ref_dir
  doc: Specify reference directory
  type: boolean
  inputBinding:
    prefix: --refdir
- id: workdir
  doc: Change workdir default (./)
  type: boolean
  inputBinding:
    prefix: --workdir
- id: read_input
  doc: Select if input is reads not fasta
  type: boolean
  inputBinding:
    prefix: --read_input
- id: min_required_hits
  doc: Minimum sequential hits to call a SNP!
  type: long
  inputBinding:
    prefix: --min_required_hits
- id: strictness
  doc: Percent of snps in path reqired for calling SNP (default 0.7)
  type: string
  inputBinding:
    prefix: --strictness
- id: keep_going
  doc: If Error occurs, continue with the rest of samples
  type: boolean
  inputBinding:
    prefix: --keep_going
- id: rerun
  doc: Rerun already processed files (else skip if result file exists)
  type: boolean
  inputBinding:
    prefix: --rerun
- id: skip_mauve
  doc: If xmfa files already exists skip step
  type: boolean
  inputBinding:
    prefix: --skip_mauve
- id: keep_temp
  doc: keep temporary files
  type: boolean
  inputBinding:
    prefix: --keep_temp
- id: tmpdir
  doc: Specify reference directory
  type: boolean
  inputBinding:
    prefix: --tmpdir
- id: logdir
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --logdir
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: supress
  doc: Supress warnings
  type: boolean
  inputBinding:
    prefix: --supress
- id: query
  doc: File(s) to align (fasta)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- CanSNPer2
