version 1.0

task VarlociraptorEstimateTmb {
  input {
    String tumorTumorSample
  }
  command <<<
    varlociraptor estimate tmb \
      ~{if defined(tumorTumorSample) then ("--tumor-sample " +  '"' + tumorTumorSample + '"') else ""}
  >>>
}