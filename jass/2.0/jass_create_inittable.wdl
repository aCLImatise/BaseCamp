version 1.0

task JassCreateInittable {
  input {
    String inputInputDataPath
    String inInItCovariancePath
    String regionsRegionsMapPath
    String descriptionDescriptionFilePath
    String inInItTablePath
  }
  command <<<
    jass create-inittable \
      ~{if defined(inputInputDataPath) then ("--input-data-path " +  '"' + inputInputDataPath + '"') else ""} \
      ~{if defined(inInItCovariancePath) then ("--init-covariance-path " +  '"' + inInItCovariancePath + '"') else ""} \
      ~{if defined(regionsRegionsMapPath) then ("--regions-map-path " +  '"' + regionsRegionsMapPath + '"') else ""} \
      ~{if defined(descriptionDescriptionFilePath) then ("--description-file-path " +  '"' + descriptionDescriptionFilePath + '"') else ""} \
      ~{if defined(inInItTablePath) then ("--init-table-path " +  '"' + inInItTablePath + '"') else ""}
  >>>
}