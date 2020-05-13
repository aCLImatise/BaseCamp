version 1.0

task MedpyStackSubVolumes.py {
  input {
    Boolean fF
    Boolean vV
    Boolean dD
    Boolean zZ
    Boolean rR
    String? dimensionDimension
    String? outputOutput
    String? imagesImages
  }
  command <<<
    medpy_stack_sub_volumes.py \
      ~{dimensionDimension} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-z" false="" zZ} \
      ~{true="-r" false="" rR} \
      ~{outputOutput} \
      ~{imagesImages}
  >>>
}