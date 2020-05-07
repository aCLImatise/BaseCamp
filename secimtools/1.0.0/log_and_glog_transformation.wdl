version 1.0

task LogAndGlogTransformation.py {
  input {
    String inputInput
    String designDesign
    String uniqidUniqid
    String transformationTransformation
    String logLogBase
    String lambdaLambdaValue
    String oOName
    Boolean debugDebug
  }
  command <<<
    log_and_glog_transformation.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(uniqidUniqid) then ("--uniqID " +  '"' + uniqidUniqid + '"') else ""} \
      ~{if defined(transformationTransformation) then ("--transformation " +  '"' + transformationTransformation + '"') else ""} \
      ~{if defined(logLogBase) then ("--log_base " +  '"' + logLogBase + '"') else ""} \
      ~{if defined(lambdaLambdaValue) then ("--lambda_value " +  '"' + lambdaLambdaValue + '"') else ""} \
      ~{if defined(oOName) then ("--oname " +  '"' + oOName + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}