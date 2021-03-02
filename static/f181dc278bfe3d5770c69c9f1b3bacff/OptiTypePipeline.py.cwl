class: CommandLineTool
id: OptiTypePipeline.py.cwl
inputs:
- id: in_input
  doc: ".fastq file(s) (fished or raw) or .bam files stored\nfor re-use, generated\
    \ by an earlier OptiType run. One\nfile: single-end mode, two files: paired-end\
    \ mode."
  type: string[]
  inputBinding:
    prefix: --input
- id: in_rna
  doc: Use with RNA sequencing data.
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_dna
  doc: Use with DNA sequencing data.
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_beta
  doc: "The beta value for for homozygosity detection (see\npaper). Default: 0.009.\
    \ Handle with care."
  type: double?
  inputBinding:
    prefix: --beta
- id: in_enumerate
  doc: "Number of enumerations. OptiType will output the\noptimal solution and the\
    \ top N-1 suboptimal solutions\nin the results CSV. Default: 1"
  type: long?
  inputBinding:
    prefix: --enumerate
- id: in_outdir
  doc: "Specifies the out directory to which all files should\nbe written."
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: Specifies prefix of output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_verbose
  doc: Set verbose mode on.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_config
  doc: "Path to config file. Default: config.ini in the same\ndirectory as this script\n"
  type: File?
  inputBinding:
    prefix: --config
- id: in_opti_type
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Specifies the out directory to which all files should\nbe written."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/optitype:1.3.5--0
cwlVersion: v1.1
baseCommand:
- OptiTypePipeline.py
