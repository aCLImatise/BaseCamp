class: CommandLineTool
id: read_analysis.py_detect_ir.cwl
inputs:
- id: annotation
  doc: Annotation file in ensemble GTF/GFF formats
  type: string
  inputBinding:
    prefix: --annotation
- id: read
  doc: Input read for training, not required if alignment files are provided
  type: string
  inputBinding:
    prefix: --read
- id: ref_g
  doc: Reference genome, not required if genome alignment file is provided
  type: string
  inputBinding:
    prefix: --ref_g
- id: ref_t
  doc: Reference Transcriptome, not required if transcriptome alignment file is provided
  type: string
  inputBinding:
    prefix: --ref_t
- id: aligner
  doc: 'The aligner to be used: minimap2 or LAST (Default = minimap2)'
  type: string
  inputBinding:
    prefix: --aligner
- id: output
  doc: The output name and location
  type: string
  inputBinding:
    prefix: --output
- id: g_al_nm
  doc: Genome alignment file in sam or maf format (optional)
  type: string
  inputBinding:
    prefix: --g_alnm
- id: t_al_nm
  doc: Transcriptome alignment file in sam or maf format (optional)
  type: string
  inputBinding:
    prefix: --t_alnm
- id: num_threads
  doc: Number of threads for alignment (Default = 1)
  type: string
  inputBinding:
    prefix: --num_threads
outputs: []
cwlVersion: v1.1
baseCommand:
- read_analysis.py
- detect_ir
