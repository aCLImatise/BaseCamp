version 1.0

task MedakaToolsIsRleModel {
  input {
    String modelModel
    Boolean disableDisableCuDnn
  }
  command <<<
    medaka tools is_rle_model \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{true="--disable_cudnn" false="" disableDisableCuDnn}
  >>>
}