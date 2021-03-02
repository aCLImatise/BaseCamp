version 1.0

task Csbbfit {
  input {
    Int? chain_one
    Int? chain_two
    String? scale_mixture
    Int? alignment
    File? outfile
    Int? niter
    Boolean? em
    Int pdb_one
    Int pdb_two
  }
  command <<<
    csb_bfit \
      ~{pdb_one} \
      ~{pdb_two} \
      ~{if defined(chain_one) then ("--chain1 " +  '"' + chain_one + '"') else ""} \
      ~{if defined(chain_two) then ("--chain2 " +  '"' + chain_two + '"') else ""} \
      ~{if defined(scale_mixture) then ("--scalemixture " +  '"' + scale_mixture + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(niter) then ("--niter " +  '"' + niter + '"') else ""} \
      ~{if (em) then "--em" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chain_one: "Chain of the first structure (default=A)"
    chain_two: "Chain of the second structure (default=A)"
    scale_mixture: "Scale mixture distribution (default=student)"
    alignment: "Alignment in fasta format defining equivalent\\npositions Assumes that chain1 is the first sequence of\\nthe alignment and chain2 the second sequence"
    outfile: "file to which the rotated second structure will be\\nwritten (default=bfit.pdb)"
    niter: "Number of optimization steps (default=200)"
    em: "Use the EM algorithm for optimsation (default=False)"
    pdb_one: "full path to the first structure"
    pdb_two: "full path to the second structure"
  }
  output {
    File out_stdout = stdout()
  }
}