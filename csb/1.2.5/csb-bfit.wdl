version 1.0

task CsbBfit {
  input {
    String chainChain1
    String chainChain2
    String scaleScaleMixture
    String alignmentAlignment
    String outfileOutfile
    String niterNiter
    Boolean emEm
    String? pdb1Pdb1
    String? pdb2Pdb2
  }
  command <<<
    csb-bfit \
      ~{pdb1Pdb1} \
      ~{if defined(chainChain1) then ("--chain1 " +  '"' + chainChain1 + '"') else ""} \
      ~{if defined(chainChain2) then ("--chain2 " +  '"' + chainChain2 + '"') else ""} \
      ~{if defined(scaleScaleMixture) then ("--scalemixture " +  '"' + scaleScaleMixture + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(niterNiter) then ("--niter " +  '"' + niterNiter + '"') else ""} \
      ~{true="--em" false="" emEm} \
      ~{pdb2Pdb2}
  >>>
}