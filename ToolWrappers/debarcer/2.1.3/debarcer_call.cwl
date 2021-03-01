class: CommandLineTool
id: debarcer_call.cwl
inputs:
- id: in_outdir
  doc: Output directory where subdirectories are created
  type: Directory?
  inputBinding:
    prefix: --Outdir
- id: in_config
  doc: Path to the config file
  type: File?
  inputBinding:
    prefix: --Config
- id: in_reference
  doc: Path to the refeence genome
  type: File?
  inputBinding:
    prefix: --Reference
- id: in_ref_threshold
  doc: "Maximum reference frequency to consider (in percent)\nalternative variants\
    \ (ie. position with ref freq <=\nref_threshold is considered variable)"
  type: string?
  inputBinding:
    prefix: --RefThreshold
- id: in_alternative_threshold
  doc: "Minimum allele frequency (in percent) to consider an\nalternative allele at\
    \ a variable position (ie. allele\nfreq >= alt_threshold and ref freq <= ref_threshold:\n\
    alternative allele)"
  type: string?
  inputBinding:
    prefix: --AlternativeThreshold
- id: in_filter_threshold
  doc: "Minimum number of reads to pass alternative variants\n(ie. filter = PASS if\
    \ variant depth >= alt_threshold)"
  type: long?
  inputBinding:
    prefix: --FilterThreshold
- id: in_fam_size
  doc: "Minimum UMI family size\n"
  type: long?
  inputBinding:
    prefix: --Famsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory where subdirectories are created
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/debarcer:2.1.3--py_0
cwlVersion: v1.1
baseCommand:
- debarcer
- call
