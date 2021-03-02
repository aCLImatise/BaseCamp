class: CommandLineTool
id: ppanggolin_rgp.cwl
inputs:
- id: in_persistent_penalty
  doc: "Penalty score to apply to persistent genes (default:\n3)"
  type: long?
  inputBinding:
    prefix: --persistent_penalty
- id: in_variable_gain
  doc: 'Gain score to apply to variable genes (default: 1)'
  type: long?
  inputBinding:
    prefix: --variable_gain
- id: in_min_score
  doc: "Minimal score wanted for considering a region as being\na RGP (default: 4)"
  type: long?
  inputBinding:
    prefix: --min_score
- id: in_min_length
  doc: "Minimum length (bp) of a region to be considered a RGP\n(default: 3000)"
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_dup_margin
  doc: "Minimum ratio of organisms where the family is present\nin which the family\
    \ must have multiple genes for it to\nbe considered 'duplicated' (default: 0.05)"
  type: double?
  inputBinding:
    prefix: --dup_margin
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --log
- id: in_disable_prog_bar
  doc: 'disables the progress bars (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_prog_bar
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.131--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- rgp
