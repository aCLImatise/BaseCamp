version 1.0

task GWAMA {
  input {
    Boolean sexSex
    Boolean filterFilter
    Boolean nameNameMarker
    Boolean nameNameStrand
    Boolean nameNameN
    Boolean nameNameEaf
    Boolean nameNameBeta
    Boolean nameNameSe
    Boolean nameNameOr
    Boolean nameNameOr95l
    Boolean nameNameOr95u
  }
  command <<<
    GWAMA \
      ~{true="--sex" false="" sexSex} \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--name_marker" false="" nameNameMarker} \
      ~{true="--name_strand" false="" nameNameStrand} \
      ~{true="--name_n" false="" nameNameN} \
      ~{true="--name_eaf" false="" nameNameEaf} \
      ~{true="--name_beta" false="" nameNameBeta} \
      ~{true="--name_se" false="" nameNameSe} \
      ~{true="--name_or" false="" nameNameOr} \
      ~{true="--name_or_95l" false="" nameNameOr95l} \
      ~{true="--name_or_95u" false="" nameNameOr95u}
  >>>
}