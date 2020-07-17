version 1.0

task CsbBfit {
  input {
    String? chain_one
    String? chain_two
    String? scale_mixture
    String? alignment
    String? outfile
    String? niter
    Boolean? em
    String pdb_one
    String pdb_two
  }
  command <<<
    csb-bfit \
      ~{pdb_one} \
      ~{pdb_two} \
      ~{if defined(chain_one) then ("--chain1 " +  '"' + chain_one + '"') else ""} \
      ~{if defined(chain_two) then ("--chain2 " +  '"' + chain_two + '"') else ""} \
      ~{if defined(scale_mixture) then ("--scalemixture " +  '"' + scale_mixture + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(niter) then ("--niter " +  '"' + niter + '"') else ""} \
      ~{true="--em" false="" em}
  >>>
  parameter_meta {
    chain_one: "Chain of the first structure (default=A)"
    chain_two: "Chain of the second structure (default=A)"
    scale_mixture: "Scale mixture distribution (default=student)"
    alignment: "Alignment in fasta format defining equivalent positions Assumes that chain1 is the first sequence of the alignment and chain2 the second sequence"
    outfile: "file to which the rotated second structure will be written (default=bfit.pdb)"
    niter: "Number of optimization steps (default=200)"
    em: "Use the EM algorithm for optimsation (default=False)"
    pdb_one: "full path to the first structure"
    pdb_two: "full path to the second structure"
  }
}