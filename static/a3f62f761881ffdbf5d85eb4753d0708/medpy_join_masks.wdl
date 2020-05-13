version 1.0

task MedpyJoinMasks.py {
  input {
    String operationOperation
    Boolean vV
    Boolean dD
    Boolean fF
    String? outputOutput
    String? inputsInputs
  }
  command <<<
    medpy_join_masks.py \
      ~{outputOutput} \
      ~{if defined(operationOperation) then ("--operation " +  '"' + operationOperation + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{inputsInputs}
  >>>
}