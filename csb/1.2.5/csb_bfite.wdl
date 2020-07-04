version 1.0

task CsbBfite {
  input {
    String? chain
    String? scale_mixture
    String? alignment
    String? outfile
    String? niter
    String pdb
  }
  command <<<
    csb-bfite \
      ~{pdb} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(scale_mixture) then ("--scalemixture " +  '"' + scale_mixture + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(niter) then ("--niter " +  '"' + niter + '"') else ""}
  >>>
  parameter_meta {
    chain: "Chain (default=A)"
    scale_mixture: "Scale mixture distribution (default=student)"
    alignment: "Alignment in fasta format defining equivalent positions Assumes that chain1 is the first sequence of the alignment and chain2 the second sequence"
    outfile: "file to which the rotated second structure will be written (default=bfit.pdb)"
    niter: "Number of optimization steps (default=200)"
    pdb: "full path to the ensemble"
  }
}