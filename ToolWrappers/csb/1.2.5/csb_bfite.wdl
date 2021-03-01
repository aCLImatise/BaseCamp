version 1.0

task Csbbfite {
  input {
    String? chain
    String? scale_mixture
    Int? alignment
    File? outfile
    Int? niter
  }
  command <<<
    csb_bfite \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(scale_mixture) then ("--scalemixture " +  '"' + scale_mixture + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(niter) then ("--niter " +  '"' + niter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chain: "Chain (default=A)"
    scale_mixture: "Scale mixture distribution (default=student)"
    alignment: "Alignment in fasta format defining equivalent\\npositions Assumes that chain1 is the first sequence of\\nthe alignment and chain2 the second sequence"
    outfile: "file to which the rotated second structure will be\\nwritten (default=bfit.pdb)"
    niter: "Number of optimization steps (default=200)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}