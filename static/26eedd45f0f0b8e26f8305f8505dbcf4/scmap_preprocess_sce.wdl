version 1.0

task ScmapPreprocessSce.R {
  input {
    String inputInputObject
    String outputOutputSceObject
  }
  command <<<
    scmap-preprocess-sce.R \
      ~{if defined(inputInputObject) then ("--input-object " +  '"' + inputInputObject + '"') else ""} \
      ~{if defined(outputOutputSceObject) then ("--output-sce-object " +  '"' + outputOutputSceObject + '"') else ""}
  >>>
}