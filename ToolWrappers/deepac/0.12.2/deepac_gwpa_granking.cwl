class: CommandLineTool
id: deepac_gwpa_granking.cwl
inputs:
- id: in_patho_dir
  doc: "Directory containing the pathogenicity scores over all\ngenomic regions per\
    \ species (.bedgraph)"
  type: Directory
  inputBinding:
    prefix: --patho-dir
- id: in_gff_dir
  doc: "Directory containing the annotation data of the\nspecies (.gff)"
  type: Directory
  inputBinding:
    prefix: --gff-dir
- id: in_out_dir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_extended
  doc: Check for multiple CDSs per gene and unnamed genes.
  type: boolean
  inputBinding:
    prefix: --extended
- id: in_n_cpus
  doc: "Number of CPU cores.\n"
  type: long
  inputBinding:
    prefix: --n-cpus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- deepac
- gwpa
- granking
