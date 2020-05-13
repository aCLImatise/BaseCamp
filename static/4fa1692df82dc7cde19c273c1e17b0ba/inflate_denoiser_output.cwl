class: CommandLineTool
id: inflate_denoiser_output.py.cwl
inputs:
- id: centroid_fps
  doc: the centroid fasta filepaths [REQUIRED]
  type: string
  inputBinding:
    prefix: --centroid_fps
- id: singleton_fps
  doc: the singleton fasta filepaths [REQUIRED]
  type: string
  inputBinding:
    prefix: --singleton_fps
- id: fast_a_fps
  doc: the input (to denoiser) fasta filepaths [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_fps
- id: de_noise_r_map_fps
  doc: the denoiser map filepaths [REQUIRED]
  type: string
  inputBinding:
    prefix: --denoiser_map_fps
- id: output_fast_a_fp
  doc: the output fasta filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fasta_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- inflate_denoiser_output.py
