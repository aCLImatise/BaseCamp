version 1.0

task CsbBfite {
  input {
    String chainChain
    String scaleScaleMixture
    String alignmentAlignment
    String outfileOutfile
    String niterNiter
    String? pdbPdb
  }
  command <<<
    csb-bfite \
      ~{pdbPdb} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(scaleScaleMixture) then ("--scalemixture " +  '"' + scaleScaleMixture + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(niterNiter) then ("--niter " +  '"' + niterNiter + '"') else ""}
  >>>
}