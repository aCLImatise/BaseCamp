version 1.0

task CovModel.py {
  input {
    Boolean intInt
    String ratioRatio
    Boolean noNoSample
    String? countsCountsFile
  }
  command <<<
    cov_model.py \
      ~{countsCountsFile} \
      ~{true="--int" false="" intInt} \
      ~{if defined(ratioRatio) then ("--ratio " +  '"' + ratioRatio + '"') else ""} \
      ~{true="--no_sample" false="" noNoSample}
  >>>
}