version 1.0

task Maaslin2R {
  input {
    Int? min_abundance
    Int? min_prevalence
    Int? max_significance
    String? normalization
    String? transform
    String? analysis_method
    String? random_effects
    String? fixed_effects
    String? correction
    String? standardize
    String? plot_heat_map
    Int? heat_map_first_n
    String? plot_scatter
    Int? cores
  }
  command <<<
    Maaslin2_R \
      ~{if defined(min_abundance) then ("--min_abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(min_prevalence) then ("--min_prevalence " +  '"' + min_prevalence + '"') else ""} \
      ~{if defined(max_significance) then ("--max_significance " +  '"' + max_significance + '"') else ""} \
      ~{if defined(normalization) then ("--normalization " +  '"' + normalization + '"') else ""} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{if defined(analysis_method) then ("--analysis_method " +  '"' + analysis_method + '"') else ""} \
      ~{if defined(random_effects) then ("--random_effects " +  '"' + random_effects + '"') else ""} \
      ~{if defined(fixed_effects) then ("--fixed_effects " +  '"' + fixed_effects + '"') else ""} \
      ~{if defined(correction) then ("--correction " +  '"' + correction + '"') else ""} \
      ~{if defined(standardize) then ("--standardize " +  '"' + standardize + '"') else ""} \
      ~{if defined(plot_heat_map) then ("--plot_heatmap " +  '"' + plot_heat_map + '"') else ""} \
      ~{if defined(heat_map_first_n) then ("--heatmap_first_n " +  '"' + heat_map_first_n + '"') else ""} \
      ~{if defined(plot_scatter) then ("--plot_scatter " +  '"' + plot_scatter + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_abundance: "The minimum abundance for each feature [ Default: 0 ]"
    min_prevalence: "The minimum percent of samples for whicha feature is detected at minimum abundance [ Default: 0.1 ]"
    max_significance: "The q-value threshold for significance [ Default: 0.25 ]"
    normalization: "The normalization method to apply  [ Default: TSS ] [ Choices: TSS, CLR, CSS, NONE, TMM ]"
    transform: "The transform to apply [ Default: LOG ] [ Choices: LOG, LOGIT, AST, NONE ]"
    analysis_method: "The analysis method to apply [ Default: LM ] [ Choices: LM, SLM, CPLM, ZICP, NEGBIN, ZINB ]"
    random_effects: "The random effects for the model,  comma-delimited for multiple effects  [ Default: none ]"
    fixed_effects: "The fixed effects for the model,  comma-delimited for multiple effects  [ Default: all ]"
    correction: "The correction method for computing  the q-value [ Default: BH ]"
    standardize: "Apply z-score so continuous metadata are on  the same scale [ Default: TRUE ]"
    plot_heat_map: "Generate a heatmap for the significant  associations [ Default: TRUE ]"
    heat_map_first_n: "In heatmap, plot top N features with significant  associations [ Default: 50 ]"
    plot_scatter: "Generate scatter plots for the significant  associations [ Default: TRUE ]"
    cores: "The number of R processes to  run in parallel [ Default: 1 ]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}