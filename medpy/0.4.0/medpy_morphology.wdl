version 1.0

task MedpyMorphology.py {
  input {
    String typeType
    String iterationsIterations
    Int sizeSize
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
  }
  command <<<
    medpy_morphology.py \
      ~{inputInput} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput}
  >>>
}