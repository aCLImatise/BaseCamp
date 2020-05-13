version 1.0

task DataNormalizationAndRescaling.py {
  input {
    String inputInput
    String designDesign
    String uniqidUniqid
    String methodMethod
    String outOut
  }
  command <<<
    data_normalization_and_rescaling.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(uniqidUniqid) then ("--uniqID " +  '"' + uniqidUniqid + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}