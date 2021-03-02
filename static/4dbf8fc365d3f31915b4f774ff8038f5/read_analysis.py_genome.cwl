class: CommandLineTool
id: read_analysis.py_genome.cwl
inputs:
- id: in_read
  doc: Input read for training
  type: string?
  inputBinding:
    prefix: --read
- id: in_ref_g
  doc: "Reference genome, not required if genome alignment\nfile is provided"
  type: File?
  inputBinding:
    prefix: --ref_g
- id: in_aligner
  doc: "The aligner to be used, minimap2 or LAST (Default =\nminimap2)"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_g_al_nm
  doc: Genome alignment file in sam or maf format (optional)
  type: File?
  inputBinding:
    prefix: --g_alnm
- id: in_output
  doc: "The location and prefix of outputting profiles\n(Default = training)"
  type: string?
  inputBinding:
    prefix: --output
- id: in_no_model_fit
  doc: Disable model fitting step
  type: boolean?
  inputBinding:
    prefix: --no_model_fit
- id: in_num_threads
  doc: "Number of threads for alignment and model fitting\n(Default = 1)\n"
  type: long?
  inputBinding:
    prefix: --num_threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nanosim:2.6.0--0
cwlVersion: v1.1
baseCommand:
- read_analysis.py
- genome
