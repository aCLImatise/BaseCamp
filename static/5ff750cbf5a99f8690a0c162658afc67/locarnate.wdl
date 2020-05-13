version 1.0

task Locarnate {
  input {
    Boolean pairwisePairwiseParameters
    Boolean tTCoffeeParams
    Boolean ppPpCalculatorParams
    Boolean outputOutput
    Boolean libraryLibraryOnly
    Boolean libraryLibraryName
    Boolean additionalAdditionalLibraries
    Boolean pairwisePairwiseAligner
    Boolean scalingScalingFactor
  }
  command <<<
    locarnate \
      ~{true="--pairwise_parameters" false="" pairwisePairwiseParameters} \
      ~{true="--tcoffee_params" false="" tTCoffeeParams} \
      ~{true="--pp_calculator_params" false="" ppPpCalculatorParams} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--library-only" false="" libraryLibraryOnly} \
      ~{true="--library-name" false="" libraryLibraryName} \
      ~{true="--additional-libraries" false="" additionalAdditionalLibraries} \
      ~{true="--pairwise_aligner" false="" pairwisePairwiseAligner} \
      ~{true="--scaling_factor" false="" scalingScalingFactor}
  >>>
}