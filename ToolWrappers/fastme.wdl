version 1.0

task Fastme {
  input {
    Boolean? minput_data_filem
    Boolean? minput_user_tree
    Boolean? moutput_tree_filem
    Boolean? moutput_matrix_filem
    Boolean? moutput_information_filem
    Boolean? moutput_bootstrap_trees
    Boolean? append
    Boolean? mmethodm__methodmmethodmmfastme
    Boolean? muse_option_dna
    Boolean? muse_option_protein
    Boolean? remove_gap
    Boolean? equilibrium
    Boolean? muse_option_you
    Boolean? muse_option_m
    Boolean? spr
    Boolean? mbranchm__branchlengthmbranchmuse
    Boolean? mdatasetsm__datasetsmdatasetsmuse
    Boolean? mreplicatesm__bootstrapmreplicatesmuse
    Boolean? mseedm__seedmseedmuse
    Boolean? muse_option_want
    Boolean? mnumber_option_set
    Boolean? mnumber_threadsm_nbthreadsmnumber
    Boolean? mvaluem__verbosemvaluemsets
  }
  command <<<
    fastme \
      ~{if (minput_data_filem) then "-i" else ""} \
      ~{if (minput_user_tree) then "-u" else ""} \
      ~{if (moutput_tree_filem) then "-o" else ""} \
      ~{if (moutput_matrix_filem) then "-O" else ""} \
      ~{if (moutput_information_filem) then "-I" else ""} \
      ~{if (moutput_bootstrap_trees) then "-B" else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if (mmethodm__methodmmethodmmfastme) then "-m" else ""} \
      ~{if (muse_option_dna) then "-d" else ""} \
      ~{if (muse_option_protein) then "-p" else ""} \
      ~{if (remove_gap) then "--remove_gap" else ""} \
      ~{if (equilibrium) then "--equilibrium" else ""} \
      ~{if (muse_option_you) then "-g" else ""} \
      ~{if (muse_option_m) then "-n" else ""} \
      ~{if (spr) then "--spr" else ""} \
      ~{if (mbranchm__branchlengthmbranchmuse) then "-w" else ""} \
      ~{if (mdatasetsm__datasetsmdatasetsmuse) then "-D" else ""} \
      ~{if (mreplicatesm__bootstrapmreplicatesmuse) then "-b" else ""} \
      ~{if (mseedm__seedmseedmuse) then "-z" else ""} \
      ~{if (muse_option_want) then "-c" else ""} \
      ~{if (mnumber_option_set) then "-f" else ""} \
      ~{if (mnumber_threadsm_nbthreadsmnumber) then "-T" else ""} \
      ~{if (mvaluem__verbosemvaluemsets) then "-v" else ""}
  >>>
  parameter_meta {
    minput_data_filem: "[00;04minput data file[00;01m, --input_data=[00;04minput data file[00;00m\\nThe [00;04minput data file[00;00m contains sequence alignment(s)[00;00m\\nor a distance matrix(ces)."
    minput_user_tree: "[00;04minput user tree file[00;01m, --user_tree=[00;04minput user tree file[00;00m\\n[00;01mFastME [00;00mmay use an existing topology available in the [00;04minput user tree file[00;00m\\nwhich corresponds to the input dataset."
    moutput_tree_filem: "[00;04moutput tree file[00;01m, --output_tree=[00;04moutput tree file[00;00m\\n[00;01mFastME [00;00mwill write the infered tree into the [00;04moutput tree file[00;00m."
    moutput_matrix_filem: "[00;04moutput matrix file[00;01m, --output_matrix=[00;04moutput matrix file[00;00m\\nUse this option if you want [00;01mFastME [00;00mto write the distances[00;00m\\nmatrix computed from the input alignment in the [00;04moutput matrix file[00;00m."
    moutput_information_filem: "[00;04moutput information file[00;01m, --output_info=[00;04moutput information file[00;00m\\nUse this option if you want [00;01mFastME [00;00mto write information[00;00m\\nabout its execution in the [00;04moutput information file[00;00m."
    moutput_bootstrap_trees: "[00;04moutput bootstrap trees file[00;01m, --output_boot=[00;04moutput bootstrap trees file[00;00m\\nUse this option if you want [00;01mFastME [00;00mto write bootstrap trees[00;00m\\nin the [00;04mbootstrap trees file[00;00m."
    append: "[00;00m\\nUse this option to append results to existing output files (if any).[00;00m\\nBy default output files will be overwritten."
    mmethodm__methodmmethodmmfastme: "[00;04mmethod[00;01m, --method=[00;04mmethod[00;00m\\n[00;01mFastME [00;00mcomputes a tree using a distance algorithm.[00;00m\\nYou may choose this [00;04mmethod[00;00m from:[00;00m\\n[00;01mTaxAdd_(B)alME[00;00m, [00;01mTaxAdd_(O)LSME[00;00m, [00;01mB(I)ONJ[00;00m (default),[00;00m\\n[00;01m(N)J[00;00m or [00;01m(U)NJ[00;00m."
    muse_option_dna: "[00;04m[model][00;01m, --dna=[00;04m[model][00;00m\\nUse this option if your input data file contains DNA sequences alignment(s).[00;00m\\nYou may also indicate the evolutionary [00;04m[model][00;00m which can be choosen from:[00;00m\\n[00;01m(p)-distance[00;00m, [00;01mR(Y) symmetric[00;00m, [00;01m(R)Y[00;00m, [00;01m(J)C69[00;00m, [00;01m(K)2P[00;00m, [00;01mF8(1)[00;00m, [00;01mF8(4)[00;00m (default), [00;01m(T)N93[00;00m, [00;01m(L)ogDet[00;00m."
    muse_option_protein: "[00;04m[model][00;01m, --protein=[00;04m[model][00;00m\\nUse this option if your input data file contains protein sequences alignment(s).[00;00m\\nYou may also indicate the evolutionary [00;04m[model][00;00m which can be choosen from:[00;00m\\n[00;01m(p)-distance[00;00m, [00;01m(F)81 like[00;00m, [00;01m(L)G[00;00m (default), [00;01m(W)AG[00;00m, [00;01m(J)TT[00;00m, [00;01mDay(h)off[00;00m, [00;00m\\n[00;01m(D)CMut[00;00m, [00;01m(C)pRev[00;00m, [00;01m(M)tREV[00;00m, [00;01m(R)tREV[00;00m, [00;01mHIV(b)[00;00m, [00;01mH(I)Vw[00;00m or [00;01mFL(U)[00;00m."
    remove_gap: "[00;00m\\nUse this option to completely remove any site which has a gap in[00;00m\\nany sequence. By default, [00;01mFastME [00;00mis doing pairwise deletion of gaps."
    equilibrium: "[00;00m\\nThe equilibrium frequencies for DNA are always estimated by counting[00;00m\\nthe occurence of the nucleotides in the input alignment.[00;00m\\nFor amino-acid sequences, the equilibrium frequencies are estimated[00;00m\\nusing the frequencies defined by the substitution model.[00;00m\\nUse this option if you whish to estimate the amino-acid frequencies[00;00m\\nby counting their occurence in the input alignment."
    muse_option_you: "[00;04m[alpha][00;01m, --gamma=[00;04m[alpha][00;00m\\nUse this option if you wish to have gamma distributed rates across sites.[00;00m\\nBy default, FastME runs with no gamma variation.[00;00m\\nIf running FastME with gamma distributed rates across sites, the [00;04m[alpha][00;00m default value is 1.0.[00;00m\\nOnly helpful when the input data file contains sequences alignment(s)."
    muse_option_m: "[00;04m[NNI][00;01m, --nni=[00;04m[NNI][00;00m\\nUse this option to do [00;04m[NNI][00;00m tree topology improvement.[00;00m\\nYou may choose the [00;04m[NNI][00;00m type from:[00;00m\\n[00;01mNNI_(B)alME[00;00m (default) or [00;01mNNI_(O)LS[00;00m."
    spr: "[00;00m\\nUse this option to do [00;04mSPR[00;00m tree topology improvement."
    mbranchm__branchlengthmbranchmuse: "[00;04mbranch[00;01m, --branch_length=[00;04mbranch[00;00m\\nUse this option to indicate the [00;04mbranch[00;00m length to assign to the tree.[00;00m\\nYou may choose the [00;04mbranch[00;00m length from: [00;01m(B)alLS[00;00m (default), [00;01m(O)LS[00;00m\\nor [00;01m(n)one[00;00m. [00;01m(n)one [00;00mis only available with BIONJ, NJ or UNJ.[00;00m\\nOnly helpful when not improving the tree topology (no NNI nor SPR)."
    mdatasetsm__datasetsmdatasetsmuse: "[00;04mdatasets[00;01m, --datasets=[00;04mdatasets[00;00m\\nUse this option to indicate the number of [00;04mdatasets[00;00m in your input[00;00m\\ndata file. Default value is 1."
    mreplicatesm__bootstrapmreplicatesmuse: "[00;04mreplicates[00;01m, --bootstrap=[00;04mreplicates[00;00m\\nUse this option to indicate the number of [00;04mreplicates[00;01m FastME [00;00mwill[00;00m\\ndo for bootstrapping. Default value is 0.[00;00m\\nOnly helpful when the input data file contains sequences alignment(s)."
    mseedm__seedmseedmuse: "[00;04mseed[00;01m, --seed=[00;04mseed[00;00m\\nUse this option to initialize randomization with [00;04mseed[00;00m value.[00;00m\\nOnly helpful when bootstrapping."
    muse_option_want: "[00;00m\\nUse this option if you want FastME only to compute distance matrix.[00;00m\\nOnly helpful when the input data file contains sequences alignment(s)."
    mnumber_option_set: "[00;04mnumber of digits[00;00m\\nUse this option to set the number of digits after the dot to use on output.[00;00m\\nDefault precision is 12."
    mnumber_threadsm_nbthreadsmnumber: "[00;04mnumber of threads[00;01m, --nb_threads=[00;04mnumber of threads[00;00m\\nUse this option to set the number of threads to use.[00;00m\\nDefault [00;04mnumber of threads[00;00m is 8."
    mvaluem__verbosemvaluemsets: "[00;04mvalue[00;01m, --verbose=[00;04mvalue[00;00m\\nSets the verbose level to [00;04mvalue[00;00m [0-3].[00;00m\\nDefault [00;04mvalue[00;00m is 0."
  }
  output {
    File out_stdout = stdout()
  }
}