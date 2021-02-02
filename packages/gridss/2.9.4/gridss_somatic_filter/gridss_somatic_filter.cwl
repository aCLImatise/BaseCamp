class: CommandLineTool
id: gridss_somatic_filter.cwl
inputs:
- id: in_gc
  doc: "Perform garbage collection after freeing of\nlarge objects."
  type: boolean
  inputBinding:
    prefix: --gc
- id: in_opts
  doc: RDS file containing argument values
  type: boolean
  inputBinding:
    prefix: --opts
- id: in_pond_ir
  doc: "Directory containing Panel Of Normal bed/bedpe\nused to filter FP somatic\
    \ events. Use\ngridss.GeneratePonBedpe to generate the PON."
  type: boolean
  inputBinding:
    prefix: --pondir
- id: in_ref
  doc: "Reference genome to use. Must be a valid\ninstalled BSgenome package [default:\
    \ ]"
  type: boolean
  inputBinding:
    prefix: --ref
- id: in_input
  doc: GRIDSS VCF
  type: boolean
  inputBinding:
    prefix: --input
- id: in_output
  doc: High confidence somatic subset
  type: boolean
  inputBinding:
    prefix: --output
- id: in_full_output
  doc: Full call set excluding obviously germline call.
  type: boolean
  inputBinding:
    prefix: --fulloutput
- id: in_plot_dir
  doc: 'Output directory for plots [default: ]'
  type: Directory
  inputBinding:
    prefix: --plotdir
- id: in_normal_ordinal
  doc: "Ordinal of matching normal sample in the VCF\n[default: 1]"
  type: boolean
  inputBinding:
    prefix: --normalordinal
- id: in_tumour_ordinal
  doc: "Ordinal of tumour sample(s) in the VCF. Defaults\nto all samples not listed\
    \ as matched normals"
  type: boolean
  inputBinding:
    prefix: --tumourordinal
- id: in_script_dir
  doc: 'Path to libgridss.R script [default: ./]'
  type: boolean
  inputBinding:
    prefix: --scriptdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_plot_dir
  doc: 'Output directory for plots [default: ]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_plot_dir)
cwlVersion: v1.1
baseCommand:
- gridss_somatic_filter
