class: CommandLineTool
id: deepac_gwpa_fenrichment.cwl
inputs:
- id: in_bed_dir
  doc: "Input directory with filter activation values for a\nspecies (.bed)"
  type: Directory?
  inputBinding:
    prefix: --bed-dir
- id: in_gff
  doc: Gff file of species
  type: File?
  inputBinding:
    prefix: --gff
- id: in_out_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_motif_length
  doc: Motif length
  type: long?
  inputBinding:
    prefix: --motif-length
- id: in_n_cpus
  doc: Number of CPU cores.
  type: long?
  inputBinding:
    prefix: --n-cpus
- id: in_extended
  doc: Check for multiple CDSs per gene and unnamed genes.
  type: boolean?
  inputBinding:
    prefix: --extended
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepac:0.13.6--py_0
cwlVersion: v1.1
baseCommand:
- deepac
- gwpa
- fenrichment
