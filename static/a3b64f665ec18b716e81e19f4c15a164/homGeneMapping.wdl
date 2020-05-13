version 1.0

task HomGeneMapping {
  input {
    String? nameNameOfGenomeN
  }
  command <<<
    homGeneMapping \
      ~{nameNameOfGenomeN}
  >>>
}