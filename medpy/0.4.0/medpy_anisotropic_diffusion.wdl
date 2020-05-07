version 1.0

task MedpyAnisotropicDiffusion.py {
  input {
    String iterationsIterations
    String kappaKappa
    String gammaGamma
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
  }
  command <<<
    medpy_anisotropic_diffusion.py \
      ~{inputInput} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(kappaKappa) then ("--kappa " +  '"' + kappaKappa + '"') else ""} \
      ~{if defined(gammaGamma) then ("--gamma " +  '"' + gammaGamma + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput}
  >>>
}