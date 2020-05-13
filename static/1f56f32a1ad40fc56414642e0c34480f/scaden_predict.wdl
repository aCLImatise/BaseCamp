version 1.0

task ScadenPredict {
  input {
    String modelModelDir
    String outOutName
  }
  command <<<
    scaden predict \
      ~{if defined(modelModelDir) then ("--model_dir " +  '"' + modelModelDir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""}
  >>>
}