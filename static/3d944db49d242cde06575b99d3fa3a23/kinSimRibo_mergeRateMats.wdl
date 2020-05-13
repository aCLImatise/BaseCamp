version 1.0

task KinSimRiboMergeRateMats {
  input {
    Boolean dD
    Boolean vV
    String? paramsParams
    String? monMonRates
    String? dimDimRates
    String? mon2dimMon2dimRates
    String? dim2monDim2monRates
  }
  command <<<
    kinSimRibo_mergeRateMats \
      ~{paramsParams} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV} \
      ~{monMonRates} \
      ~{dimDimRates} \
      ~{mon2dimMon2dimRates} \
      ~{dim2monDim2monRates}
  >>>
}