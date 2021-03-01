class: CommandLineTool
id: pxlog.cwl
inputs:
- id: in_par_mf
  doc: input parameter log file(s)
  type: File?
  inputBinding:
    prefix: --parmf
- id: in_tree_f
  doc: input tree log file(s)
  type: File?
  inputBinding:
    prefix: --treef
- id: in_out_f
  doc: output file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_burnin
  doc: number of samples to exclude at the beginning of a file
  type: long?
  inputBinding:
    prefix: --burnin
- id: in_thin
  doc: interval of resampling
  type: long?
  inputBinding:
    prefix: --thin
- id: in_rand
  doc: number of random samples (without replacement) not yet implemented!
  type: long?
  inputBinding:
    prefix: --rand
- id: in_info
  doc: calculate log file attributes and exit
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_columns
  doc: print out column names (parameter logs only)
  type: boolean?
  inputBinding:
    prefix: --columns
- id: in_delete
  doc: delete columns by 1-index sep by commas (NO SPACES!) (parameter logs only)
  type: long?
  inputBinding:
    prefix: --delete
- id: in_keep
  doc: keep only columns by 1-index sep by commas (NO SPACES!) (parameter logs only)
  type: long?
  inputBinding:
    prefix: --keep
- id: in_seed
  doc: random number seed, clock otherwise
  type: long?
  inputBinding:
    prefix: --seed
- id: in_verbose
  doc: make the output more verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxlog
