class: CommandLineTool
id: mamotif_integrate.cwl
inputs:
- id: in_verbose
  doc: Enable verbose log messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_manorm_result_sample
  doc: MAnorm result for sample A or B (A/B_MAvalues.xls).
  type: File
  inputBinding:
    prefix: -i
- id: in_motifscan_result_sample
  doc: "MotifScan result for sample A or B\n(motif_sites_number.xls)."
  type: File
  inputBinding:
    prefix: -m
- id: in_negative
  doc: "Convert M=log2(A/B) to -M=log2(B/A). Required when\nfinding co-factors for\
    \ sample B."
  type: boolean
  inputBinding:
    prefix: --negative
- id: in_genome_name_required
  doc: Genome name. Required if `--split` is enabled.
  type: string
  inputBinding:
    prefix: -g
- id: in_split
  doc: "Split genomic regions into promoter/distal regions and\nrun separately."
  type: boolean
  inputBinding:
    prefix: --split
- id: in_upstream
  doc: 'TSS upstream distance for promoters. Default: 4000'
  type: long
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: 'TSS downstream distance for promoters. Default: 2000'
  type: long
  inputBinding:
    prefix: --downstream
- id: in_correction
  doc: "Method for multiple testing correction. Default:\nbenjamin"
  type: string
  inputBinding:
    prefix: --correction
- id: in_output_dir
  doc: Directory to write output files.
  type: Directory
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- mamotif
- integrate
