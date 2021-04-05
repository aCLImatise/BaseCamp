class: CommandLineTool
id: isoplot.cwl
inputs:
- id: in_metabolite
  doc: Metabolite(s) to plot. For all, type in 'all'
  type: string?
  inputBinding:
    prefix: --metabolite
- id: in_condition
  doc: Condition(s) to plot. For all, type in 'all'
  type: string?
  inputBinding:
    prefix: --condition
- id: in_time
  doc: Time(s) to plot. For all, type in 'all'
  type: string?
  inputBinding:
    prefix: --time
- id: in_template
  doc: Path to template
  type: File?
  inputBinding:
    prefix: --template
- id: in_stacked_area_plot
  doc: Create static stacked areaplot
  type: boolean?
  inputBinding:
    prefix: --stacked_areaplot
- id: in_barplot
  doc: "Create static barplot(for corrected_area and\nisotopologue_fraction)"
  type: boolean?
  inputBinding:
    prefix: --barplot
- id: in_mean_ed_barplot
  doc: "Create static barplot with meaned replicates(for\ncorrected_area and isotopologue_fraction)"
  type: boolean?
  inputBinding:
    prefix: --meaned_barplot
- id: in_static_mean_enrichment_plot
  doc: Create static barplot with mean enrichment data
  type: boolean?
  inputBinding:
    prefix: --static_mean_enrichment_plot
- id: in_static_mean_enrichment_mean_plot
  doc: "Create static barplot with mean enrichment data and\nmeaned replicates"
  type: boolean?
  inputBinding:
    prefix: --static_mean_enrichment_meanplot
- id: in_interactive_mean_enrichment_plot
  doc: Create interactive barplot with mean enrichment data
  type: boolean?
  inputBinding:
    prefix: --interactive_mean_enrichment_plot
- id: in_interactive_mean_enrichment_mean_plot
  doc: "Create interactive barplot with mean enrichment data\nand meaned replicates"
  type: boolean?
  inputBinding:
    prefix: --interactive_mean_enrichment_meanplot
- id: in_interactive_stacked_barplot
  doc: "Create interactive stacked barplot (for corrected area\nand isotopologue_fraction)"
  type: boolean?
  inputBinding:
    prefix: --interactive_stacked_barplot
- id: in_interactive_stacked_mean_plot
  doc: "Create interactive stacked barplot with meaned\nreplicates (for corrected\
    \ area and\nisotopologue_fraction)"
  type: boolean?
  inputBinding:
    prefix: --interactive_stacked_meanplot
- id: in_interactive_stacked_area_plot
  doc: Create interactive stacked areaplot
  type: boolean?
  inputBinding:
    prefix: --interactive_stacked_areaplot
- id: in_static_heat_map
  doc: Create a static heatmap using mean enrichment data
  type: boolean?
  inputBinding:
    prefix: --static_heatmap
- id: in_static_cluster_map
  doc: "Create a static heatmap with clustering using mean\nenrichment data"
  type: boolean?
  inputBinding:
    prefix: --static_clustermap
- id: in_interactive_heat_map
  doc: Create interactive heatmap using mean enrichment data
  type: boolean?
  inputBinding:
    prefix: --interactive_heatmap
- id: in_stack
  doc: Add option if barplots should be unstacked
  type: boolean?
  inputBinding:
    prefix: --stack
- id: in_verbose
  doc: Turns logger to debug mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_an_not
  doc: Add option if annotations should be added on maps
  type: boolean?
  inputBinding:
    prefix: --annot
- id: in_var_20
  doc: '{corrected_area,isotopologue_fraction,mean_enrichment}'
  type: string
  inputBinding:
    position: 0
- id: in_data_file
  doc: Path to datafile
  type: string
  inputBinding:
    position: 0
- id: in_destination
  doc: Path to export destination
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: Name of generated file
  type: string
  inputBinding:
    position: 2
- id: in_format_generated_file
  doc: Format of generated file
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isoplot:1.0.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- isoplot
