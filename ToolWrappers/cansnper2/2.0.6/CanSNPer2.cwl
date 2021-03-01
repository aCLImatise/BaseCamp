class: CommandLineTool
id: CanSNPer2.cwl
inputs:
- id: in_database
  doc: CanSNP database
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_save_tree
  doc: Save tree as PDF using ETE3 (default False)
  type: boolean?
  inputBinding:
    prefix: --save_tree
- id: in_no_snp_files
  doc: Don´t save output files.
  type: boolean?
  inputBinding:
    prefix: --no_snpfiles
- id: in_summary
  doc: "Output a summary file and tree with all called SNPs\nnot affected by no_snpfiles"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_ref_dir
  doc: Specify reference directory
  type: boolean?
  inputBinding:
    prefix: --refdir
- id: in_workdir
  doc: Change workdir default (./)
  type: boolean?
  inputBinding:
    prefix: --workdir
- id: in_read_input
  doc: Select if input is reads not fasta
  type: boolean?
  inputBinding:
    prefix: --read_input
- id: in_min_required_hits
  doc: Minimum sequential hits to call a SNP!
  type: long?
  inputBinding:
    prefix: --min_required_hits
- id: in_strictness
  doc: "Percent of snps in path reqired for calling SNP\n(default 0.7)"
  type: File?
  inputBinding:
    prefix: --strictness
- id: in_keep_going
  doc: If Error occurs, continue with the rest of samples
  type: boolean?
  inputBinding:
    prefix: --keep_going
- id: in_rerun
  doc: "Rerun already processed files (else skip if result\nfile exists)"
  type: boolean?
  inputBinding:
    prefix: --rerun
- id: in_skip_mauve
  doc: If xmfa files already exists skip step
  type: boolean?
  inputBinding:
    prefix: --skip_mauve
- id: in_keep_temp
  doc: keep temporary files
  type: boolean?
  inputBinding:
    prefix: --keep_temp
- id: in_tmpdir
  doc: Specify reference directory
  type: boolean?
  inputBinding:
    prefix: --tmpdir
- id: in_logdir
  doc: Specify log directory
  type: boolean?
  inputBinding:
    prefix: --logdir
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_supress
  doc: Supress warnings
  type: boolean?
  inputBinding:
    prefix: --supress
- id: in_query
  doc: File(s) to align (fasta)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_summary
  doc: "Output a summary file and tree with all called SNPs\nnot affected by no_snpfiles"
  type: File?
  outputBinding:
    glob: $(inputs.in_summary)
hints: []
cwlVersion: v1.1
baseCommand:
- CanSNPer2
