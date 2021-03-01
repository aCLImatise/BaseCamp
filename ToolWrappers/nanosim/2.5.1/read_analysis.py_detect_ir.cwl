class: CommandLineTool
id: read_analysis.py_detect_ir.cwl
inputs:
- id: in_annotation
  doc: Annotation file in ensemble GTF/GFF formats
  type: File?
  inputBinding:
    prefix: --annotation
- id: in_read
  doc: "Input read for training, not required if alignment\nfiles are provided"
  type: string?
  inputBinding:
    prefix: --read
- id: in_ref_g
  doc: "Reference genome, not required if genome alignment\nfile is provided"
  type: File?
  inputBinding:
    prefix: --ref_g
- id: in_ref_t
  doc: "Reference Transcriptome, not required if transcriptome\nalignment file is\
    \ provided"
  type: File?
  inputBinding:
    prefix: --ref_t
- id: in_aligner
  doc: "The aligner to be used: minimap2 or LAST (Default =\nminimap2)"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_output
  doc: The output name and location
  type: string?
  inputBinding:
    prefix: --output
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
- id: in_num_threads
  doc: "Number of threads for alignment (Default = 1)\n"
  type: long?
  inputBinding:
    prefix: --num_threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- read_analysis.py
- detect_ir
