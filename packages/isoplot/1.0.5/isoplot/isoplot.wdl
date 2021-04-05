version 1.0

task Isoplot {
  input {
    String? metabolite
    String? condition
    String? time
    File? template
    Boolean? stacked_area_plot
    Boolean? barplot
    Boolean? mean_ed_barplot
    Boolean? static_mean_enrichment_plot
    Boolean? static_mean_enrichment_mean_plot
    Boolean? interactive_mean_enrichment_plot
    Boolean? interactive_mean_enrichment_mean_plot
    Boolean? interactive_stacked_barplot
    Boolean? interactive_stacked_mean_plot
    Boolean? interactive_stacked_area_plot
    Boolean? static_heat_map
    Boolean? static_cluster_map
    Boolean? interactive_heat_map
    Boolean? stack
    Boolean? verbose
    Boolean? an_not
    String var_20
    String data_file
    String destination
    String name
    String format_generated_file
  }
  command <<<
    isoplot \
      ~{var_20} \
      ~{data_file} \
      ~{destination} \
      ~{name} \
      ~{format_generated_file} \
      ~{if defined(metabolite) then ("--metabolite " +  '"' + metabolite + '"') else ""} \
      ~{if defined(condition) then ("--condition " +  '"' + condition + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if (stacked_area_plot) then "--stacked_areaplot" else ""} \
      ~{if (barplot) then "--barplot" else ""} \
      ~{if (mean_ed_barplot) then "--meaned_barplot" else ""} \
      ~{if (static_mean_enrichment_plot) then "--static_mean_enrichment_plot" else ""} \
      ~{if (static_mean_enrichment_mean_plot) then "--static_mean_enrichment_meanplot" else ""} \
      ~{if (interactive_mean_enrichment_plot) then "--interactive_mean_enrichment_plot" else ""} \
      ~{if (interactive_mean_enrichment_mean_plot) then "--interactive_mean_enrichment_meanplot" else ""} \
      ~{if (interactive_stacked_barplot) then "--interactive_stacked_barplot" else ""} \
      ~{if (interactive_stacked_mean_plot) then "--interactive_stacked_meanplot" else ""} \
      ~{if (interactive_stacked_area_plot) then "--interactive_stacked_areaplot" else ""} \
      ~{if (static_heat_map) then "--static_heatmap" else ""} \
      ~{if (static_cluster_map) then "--static_clustermap" else ""} \
      ~{if (interactive_heat_map) then "--interactive_heatmap" else ""} \
      ~{if (stack) then "--stack" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (an_not) then "--annot" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isoplot:1.0.5--pyh3252c3a_0"
  }
  parameter_meta {
    metabolite: "Metabolite(s) to plot. For all, type in 'all'"
    condition: "Condition(s) to plot. For all, type in 'all'"
    time: "Time(s) to plot. For all, type in 'all'"
    template: "Path to template"
    stacked_area_plot: "Create static stacked areaplot"
    barplot: "Create static barplot(for corrected_area and\\nisotopologue_fraction)"
    mean_ed_barplot: "Create static barplot with meaned replicates(for\\ncorrected_area and isotopologue_fraction)"
    static_mean_enrichment_plot: "Create static barplot with mean enrichment data"
    static_mean_enrichment_mean_plot: "Create static barplot with mean enrichment data and\\nmeaned replicates"
    interactive_mean_enrichment_plot: "Create interactive barplot with mean enrichment data"
    interactive_mean_enrichment_mean_plot: "Create interactive barplot with mean enrichment data\\nand meaned replicates"
    interactive_stacked_barplot: "Create interactive stacked barplot (for corrected area\\nand isotopologue_fraction)"
    interactive_stacked_mean_plot: "Create interactive stacked barplot with meaned\\nreplicates (for corrected area and\\nisotopologue_fraction)"
    interactive_stacked_area_plot: "Create interactive stacked areaplot"
    static_heat_map: "Create a static heatmap using mean enrichment data"
    static_cluster_map: "Create a static heatmap with clustering using mean\\nenrichment data"
    interactive_heat_map: "Create interactive heatmap using mean enrichment data"
    stack: "Add option if barplots should be unstacked"
    verbose: "Turns logger to debug mode"
    an_not: "Add option if annotations should be added on maps"
    var_20: "{corrected_area,isotopologue_fraction,mean_enrichment}"
    data_file: "Path to datafile"
    destination: "Path to export destination"
    name: "Name of generated file"
    format_generated_file: "Format of generated file"
  }
  output {
    File out_stdout = stdout()
  }
}