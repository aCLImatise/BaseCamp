version 1.0

task Estherfilter.sh {
  input {
    String? queryQuery
    String? referenceReference
    String? cutCutOff
  }
  command <<<
    estherfilter.sh \
      ~{queryQuery} \
      ~{referenceReference} \
      ~{cutCutOff}
  >>>
}