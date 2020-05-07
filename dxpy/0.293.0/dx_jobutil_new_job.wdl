version 1.0

task DxJobutilNewJob {
  input {
    String inputInput
    String inputInputJson
    File inputInputJsonFile
    String instanceInstanceType
    Boolean instanceInstanceTypeHelp
    String extraExtraArgs
    String propertyProperty
    String tagTag
    String nameName
    Boolean dependsDependsOn
    String? functionFunction
  }
  command <<<
    dx-jobutil-new-job \
      ~{functionFunction} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputJson) then ("--input-json " +  '"' + inputInputJson + '"') else ""} \
      ~{if defined(inputInputJsonFile) then ("--input-json-file " +  '"' + inputInputJsonFile + '"') else ""} \
      ~{if defined(instanceInstanceType) then ("--instance-type " +  '"' + instanceInstanceType + '"') else ""} \
      ~{true="--instance-type-help" false="" instanceInstanceTypeHelp} \
      ~{if defined(extraExtraArgs) then ("--extra-args " +  '"' + extraExtraArgs + '"') else ""} \
      ~{if defined(propertyProperty) then ("--property " +  '"' + propertyProperty + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--depends-on" false="" dependsDependsOn}
  >>>
}