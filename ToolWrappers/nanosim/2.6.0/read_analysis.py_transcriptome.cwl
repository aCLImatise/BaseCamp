class: CommandLineTool
id: read_analysis.py_transcriptome.cwl
inputs:
- id: in_read
  doc: Input read for training
  type: string?
  inputBinding:
    prefix: --read
- id: in_ref_g
  doc: Reference genome
  type: string?
  inputBinding:
    prefix: --ref_g
- id: in_ref_t
  doc: Reference Transcriptome
  type: string?
  inputBinding:
    prefix: --ref_t
- id: in_annotation
  doc: "Annotation file in ensemble GTF/GFF formats, required\nfor intron retention\
    \ detection"
  type: File?
  inputBinding:
    prefix: --annotation
- id: in_aligner
  doc: "The aligner to be used: minimap2 or LAST (Default =\nminimap2)"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_g_al_nm
  doc: Genome alignment file in sam or maf format (optional)
  type: File?
  inputBinding:
    prefix: --g_alnm
- id: in_t_al_nm
  doc: "Transcriptome alignment file in sam or maf format\n(optional)"
  type: File?
  inputBinding:
    prefix: --t_alnm
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
- id: in_no_intron_retention
  doc: Disable Intron Retention analysis
  type: boolean?
  inputBinding:
    prefix: --no_intron_retention
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
- transcriptome
