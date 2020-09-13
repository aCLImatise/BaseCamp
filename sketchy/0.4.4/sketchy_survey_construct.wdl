version 1.0

task SketchySurveyConstruct {
  input {
    File? directory
    File? tabdelimited_genotype_feature
    String? template
    Boolean? intersect
    String survey
    String m_tuberculosis
    String values
  }
  command <<<
    sketchy survey construct \
      ~{survey} \
      ~{m_tuberculosis} \
      ~{values} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(tabdelimited_genotype_feature) then ("--output " +  '"' + tabdelimited_genotype_feature + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if (intersect) then "--intersect" else ""}
  >>>
  parameter_meta {
    directory: "Input directory with collected output from Pathfinder"
    tabdelimited_genotype_feature: "Tab-delimited genotype feature index for Sketchy"
    template: "Use a configuration template: saureus, kpneumoniae,"
    intersect: "Take minimum intersection of all specified column"
    survey: "[required]"
    m_tuberculosis: "-m, --missing TEXT    Set a missing character [-]"
    values: "--help                Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}