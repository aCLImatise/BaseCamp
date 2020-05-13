version 1.0

task SketchySurveyConstruct {
  input {
    File directoryDirectory
    File outputOutput
    String templateTemplate
    String missingMissing
    Boolean intersectIntersect
  }
  command <<<
    sketchy survey construct \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{if defined(missingMissing) then ("--missing " +  '"' + missingMissing + '"') else ""} \
      ~{true="--intersect" false="" intersectIntersect}
  >>>
}