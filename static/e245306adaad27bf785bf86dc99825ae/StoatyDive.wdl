version 1.0

task StoatyDive.py {
  input {
    Boolean aA
    Boolean bB
    Boolean cC
    File oO
    Float threshThresh
    Boolean peakPeakCorrection
    Boolean maxMaxTranslocate
    Int peakPeakLength
    Float maxMaxNormValue
    Boolean borderBorderPenalty
    Float scaleScaleMax
    Int maxMaxCl
    Int numNumCl
    Boolean smSm
    Float lamLam
    Boolean turnTurnOffClassification
  }
  command <<<
    StoatyDive.py \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(threshThresh) then ("--thresh " +  '"' + threshThresh + '"') else ""} \
      ~{true="--peak_correction" false="" peakPeakCorrection} \
      ~{true="--max_translocate" false="" maxMaxTranslocate} \
      ~{if defined(peakPeakLength) then ("--peak_length " +  '"' + peakPeakLength + '"') else ""} \
      ~{if defined(maxMaxNormValue) then ("--max_norm_value " +  '"' + maxMaxNormValue + '"') else ""} \
      ~{true="--border_penalty" false="" borderBorderPenalty} \
      ~{if defined(scaleScaleMax) then ("--scale_max " +  '"' + scaleScaleMax + '"') else ""} \
      ~{if defined(maxMaxCl) then ("--maxcl " +  '"' + maxMaxCl + '"') else ""} \
      ~{if defined(numNumCl) then ("--numcl " +  '"' + numNumCl + '"') else ""} \
      ~{true="--sm" false="" smSm} \
      ~{if defined(lamLam) then ("--lam " +  '"' + lamLam + '"') else ""} \
      ~{true="--turn_off_classification" false="" turnTurnOffClassification}
  >>>
}