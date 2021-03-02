class: CommandLineTool
id: plasmidhawk_predict.cwl
inputs:
- id: in_output
  doc: output lab-of-origin prediction
  type: string?
  inputBinding:
    prefix: --output
- id: in_skip
  doc: "Use nucmer results already present in work-dir instead\nof rerunning"
  type: boolean?
  inputBinding:
    prefix: --skip
- id: in_work_dir
  doc: output lab-of-origin prediction
  type: string?
  inputBinding:
    prefix: --work-dir
- id: in_thread
  doc: Number of threads, default 20
  type: long?
  inputBinding:
    prefix: --thread
- id: in_identity
  doc: Minimum alignment identity [0,100], default 0
  type: long?
  inputBinding:
    prefix: --identity
- id: in_verbose
  doc: Print verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_labs
  doc: input-pangenome-fasta
  type: string
  inputBinding:
    position: 0
- id: in_input_pan_genome_annotated_meta
  doc: Lab ownership metadata file
  type: string
  inputBinding:
    position: 0
- id: in_input_files
  doc: "a list of input fasta file names. If there is one file\nand it ends with a\
    \ non-fasta suffix it is assumed that\nthis file contains a list of input files\
    \ separated by\na newline"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidhawk:1.0.2--0
cwlVersion: v1.1
baseCommand:
- plasmidhawk
- predict
