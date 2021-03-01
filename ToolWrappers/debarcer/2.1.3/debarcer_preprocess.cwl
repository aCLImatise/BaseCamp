class: CommandLineTool
id: debarcer_preprocess.cwl
inputs:
- id: in_outdir
  doc: Output directory. Available from command or config
  type: Directory?
  inputBinding:
    prefix: --OutDir
- id: in_read_one
  doc: Path to first FASTQ file.
  type: long?
  inputBinding:
    prefix: --Read1
- id: in_read_two
  doc: Path to second FASTQ file, if applicable
  type: long?
  inputBinding:
    prefix: --Read2
- id: in_read_three
  doc: Path to third FASTQ file, if applicable
  type: long?
  inputBinding:
    prefix: --Read3
- id: in_prep_name
  doc: "Name of library prep to use (defined in\nlibrary_prep_types.ini)"
  type: string?
  inputBinding:
    prefix: --Prepname
- id: in_prep_file
  doc: Path to your library_prep_types.ini file
  type: File?
  inputBinding:
    prefix: --Prepfile
- id: in_config
  doc: Path to your config file
  type: File?
  inputBinding:
    prefix: --Config
- id: in_prefix
  doc: "Prefix for naming umi-reheradered fastqs. Use Prefix\nfrom Read1 if not provided\n"
  type: long?
  inputBinding:
    prefix: --Prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory. Available from command or config
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/debarcer:2.1.3--py_0
cwlVersion: v1.1
baseCommand:
- debarcer
- preprocess
