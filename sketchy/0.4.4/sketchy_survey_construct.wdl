version 1.0

task SketchySurveyConstruct {
  input {
    File? directory
    File? tabdelimited_genotype_feature
    String? template
    String? missing
    Boolean? intersect
  }
  command <<<
    sketchy survey construct \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(tabdelimited_genotype_feature) then ("--output " +  '"' + tabdelimited_genotype_feature + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(missing) then ("--missing " +  '"' + missing + '"') else ""} \
      ~{true="--intersect" false="" intersect}
  >>>
  parameter_meta {
    directory: "Input directory with collected output from Pathfinder Survey  [required]"
    tabdelimited_genotype_feature: "Tab-delimited genotype feature index for Sketchy"
    template: "Use a configuration template: saureus, kpneumoniae, mtuberculosis"
    missing: "Set a missing character [-]"
    intersect: "Take minimum intersection of all specified column values"
  }
}