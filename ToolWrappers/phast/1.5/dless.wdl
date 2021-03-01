version 1.0

task Dless {
  input {
    Float? rho
    Boolean? transitions
    Boolean? target_coverage
    Boolean? expected_length
    File? msa_format
    File? refseq
    Int? ref_idx
    File? seqname
    File? id_pref
    Int? in_del_model
    File? in_del_history
    String phylo_hmm_dot
  }
  command <<<
    dless \
      ~{phylo_hmm_dot} \
      ~{if defined(rho) then ("--rho " +  '"' + rho + '"') else ""} \
      ~{if (transitions) then "--transitions" else ""} \
      ~{if (target_coverage) then "--target-coverage" else ""} \
      ~{if (expected_length) then "--expected-length" else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{if defined(id_pref) then ("--idpref " +  '"' + id_pref + '"') else ""} \
      ~{if defined(in_del_model) then ("--indel-model " +  '"' + in_del_model + '"') else ""} \
      ~{if defined(in_del_history) then ("--indel-history " +  '"' + in_del_history + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rho: "(default 0.3)"
    transitions: "[~]<mu>,<nu>\\nSet the transition probabilities of the two-state HMM using\\nthe specified values of <mu> and <nu> (both between 0 and 1)."
    target_coverage: "[~]<gamma>\\n(Alternative to transitions, use with --expected-length) Set\\nthe transition parameters such that the expected fraction of\\nsites in conserved elements is <gamma> (betwen 0 and 1).  This\\nis a *prior* rather than *posterior* expectation and assumes\\nstationarity of the state-transition process.  This option\\ncauses the ratio mu/nu to be fixed at (1-gamma)/gamma, and\\ntogether with --expected-length, completely defines the\\ntransition probabilities."
    expected_length: "[~]<omega>\\n(Alternative to --transitions, use with --target-coverage) Set\\ntransition probabilities such that the (prior) expected length\\nof a conserved element is <omega>.  The parameter mu is set to\\n1/omega."
    msa_format: "|PHYLIP|MPM|MAF|SS\\nAlignment format (default is to guess format from file contents).\\nNote that the program msa_view can be used for conversion."
    refseq: "(for use with --msa-format MAF) Read the complete text of the\\nreference sequence from <fname> (FASTA format) and combine it\\nwith the contents of the MAF file to produce a complete,\\nordered representation of the alignment.  The reference\\nsequence of the MAF file is assumed to be the one that appears\\nfirst in each block."
    ref_idx: "Use coordinate frame of specified sequence in output.  Default\\nvalue is 1, first sequence in alignment; 0 indicates\\ncoordinate frame of entire multiple alignment."
    seqname: "Use specified string for 'seqname' (GFF) or 'chrom' field in\\noutput file.  Default is obtained from input file name (double\\nfilename root, e.g., \\\"chr22\\\" if input file is \\\"chr22.35.ss\\\")."
    id_pref: "Use specified string as prefix of generated ids in output\\nfile.  Can be used to ensure ids are unique.  Default is\\nobtained from input file name (single filename root, e.g.,\\n\\\"chr22.35\\\" if input file is \\\"chr22.35.ss\\\")."
    in_del_model: ",beta,tau[,alpha2,beta2,tau2]\\nUse a simple model of insertions and deletions that assumes a known\\nindel history and at most one indel per branch of the tree at any\\ngiven position.  The parameters alpha and beta are rates of\\ninsertion and deletion, respectively, per expected substitution per\\nsite, and the parameter tau is approximately the inverse of the\\nexpected indel length (see indelFit).  If two sets are parameters\\nare given the first will be used for nonconserved regions and the\\nsecond for conserved regions.  If --indel-history is not used, a\\nhistory will be inferred on the fly using a simple parsimony\\nalgorithm."
    in_del_history: "(for use with --indel-model) Use the specified indel history (see\\nindelHistory)."
    phylo_hmm_dot: "In particular, detects elements that have been under"
  }
  output {
    File out_stdout = stdout()
  }
}