version 1.0

task RNAplot {
  input {
    Int layoutLayoutType
    String outputOutputFormat
    String prePre
    String postPost
  }
  command <<<
    RNAplot \
      ~{if defined(layoutLayoutType) then ("--layout-type " +  '"' + layoutLayoutType + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(prePre) then ("--pre " +  '"' + prePre + '"') else ""} \
      ~{if defined(postPost) then ("--post " +  '"' + postPost + '"') else ""}
  >>>
}