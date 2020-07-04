version 1.0

task Fastme {
  input {
    Boolean? minput_data_filem
    Boolean? minput_user_tree
    Boolean? moutput_tree_filem
    Boolean? moutput_matrix_filem
    Boolean? moutput_information_filem
    Boolean? moutput_bootstrap_trees
    Boolean? mmethodm__methodmmethodm
    Boolean? can_choosen_mry
    Boolean? mpdistancem_mf_mf
    Boolean? m_default_value
    Boolean? m_type_fromm
    Boolean? mbranchm__use
    Boolean? mdatasetsm__datasetsmdatasetsm
    Boolean? mreplicatesm__bootstrapmreplicatesm
    Boolean? mseedm__seedmseedm
    Boolean? use_option_want
    Boolean? mnumber_digitsm_use
    Boolean? mnumber_threadsm_nbthreadsmnumber
    Boolean? m_default_mvaluem
  }
  command <<<
    fastme \
      ~{true="-i" false="" minput_data_filem} \
      ~{true="-u" false="" minput_user_tree} \
      ~{true="-o" false="" moutput_tree_filem} \
      ~{true="-O" false="" moutput_matrix_filem} \
      ~{true="-I" false="" moutput_information_filem} \
      ~{true="-B" false="" moutput_bootstrap_trees} \
      ~{true="-m" false="" mmethodm__methodmmethodm} \
      ~{true="-d" false="" can_choosen_mry} \
      ~{true="-p" false="" mpdistancem_mf_mf} \
      ~{true="-g" false="" m_default_value} \
      ~{true="-n" false="" m_type_fromm} \
      ~{true="-w" false="" mbranchm__use} \
      ~{true="-D" false="" mdatasetsm__datasetsmdatasetsm} \
      ~{true="-b" false="" mreplicatesm__bootstrapmreplicatesm} \
      ~{true="-z" false="" mseedm__seedmseedm} \
      ~{true="-c" false="" use_option_want} \
      ~{true="-f" false="" mnumber_digitsm_use} \
      ~{true="-T" false="" mnumber_threadsm_nbthreadsmnumber} \
      ~{true="-v" false="" m_default_mvaluem}
  >>>
  parameter_meta {
    minput_data_filem: "[00;04minput data file[00;01m, --input_data=[00;04minput data file[00;00m The [00;04minput data file[00;00m contains sequence alignment(s)[00;00m or a distance matrix(ces)."
    minput_user_tree: "[00;04minput user tree file[00;01m, --user_tree=[00;04minput user tree file[00;00m [00;01mFastME [00;00mmay use an existing topology available in the [00;04minput user tree file[00;00m which corresponds to the input dataset."
    moutput_tree_filem: "[00;04moutput tree file[00;01m, --output_tree=[00;04moutput tree file[00;00m [00;01mFastME [00;00mwill write the infered tree into the [00;04moutput tree file[00;00m."
    moutput_matrix_filem: "[00;04moutput matrix file[00;01m, --output_matrix=[00;04moutput matrix file[00;00m Use this option if you want [00;01mFastME [00;00mto write the distances[00;00m matrix computed from the input alignment in the [00;04moutput matrix file[00;00m."
    moutput_information_filem: "[00;04moutput information file[00;01m, --output_info=[00;04moutput information file[00;00m Use this option if you want [00;01mFastME [00;00mto write information[00;00m about its execution in the [00;04moutput information file[00;00m."
    moutput_bootstrap_trees: "[00;04moutput bootstrap trees file[00;01m, --output_boot=[00;04moutput bootstrap trees file[00;00m Use this option if you want [00;01mFastME [00;00mto write bootstrap trees[00;00m in the [00;04mbootstrap trees file[00;00m."
    mmethodm__methodmmethodm: "[00;04mmethod[00;01m, --method=[00;04mmethod[00;00m [00;01mFastME [00;00mcomputes a tree using a distance algorithm.[00;00m You may choose this [00;04mmethod[00;00m from:[00;00m [00;01mTaxAdd_(B)alME[00;00m, [00;01mTaxAdd_(O)LSME[00;00m, [00;01mB(I)ONJ[00;00m (default),[00;00m [00;01m(N)J[00;00m or [00;01m(U)NJ[00;00m."
    can_choosen_mry: "[00;04m[model][00;01m, --dna=[00;04m[model][00;00m Use this option if your input data file contains DNA sequences alignment(s).[00;00m You may also indicate the evolutionary [00;04m[model][00;00m which can be choosen from:[00;00m [00;01m(p)-distance[00;00m, [00;01mR(Y) symmetric[00;00m, [00;01m(R)Y[00;00m, [00;01m(J)C69[00;00m, [00;01m(K)2P[00;00m, [00;01mF8(1)[00;00m, [00;01mF8(4)[00;00m (default), [00;01m(T)N93[00;00m, [00;01m(L)ogDet[00;00m."
    mpdistancem_mf_mf: "[00;04m[model][00;01m, --protein=[00;04m[model][00;00m Use this option if your input data file contains protein sequences alignment(s).[00;00m You may also indicate the evolutionary [00;04m[model][00;00m which can be choosen from:[00;00m [00;01m(p)-distance[00;00m, [00;01m(F)81 like[00;00m, [00;01m(L)G[00;00m (default), [00;01m(W)AG[00;00m, [00;01m(J)TT[00;00m, [00;01mDay(h)off[00;00m, [00;00m [00;01m(D)CMut[00;00m, [00;01m(C)pRev[00;00m, [00;01m(M)tREV[00;00m, [00;01m(R)tREV[00;00m, [00;01mHIV(b)[00;00m, [00;01mH(I)Vw[00;00m or [00;01mFL(U)[00;00m."
    m_default_value: "[00;04m[alpha][00;01m, --gamma=[00;04m[alpha][00;00m Use this option if you wish to have gamma distributed rates across sites.[00;00m By default, FastME runs with no gamma variation.[00;00m If running FastME with gamma distributed rates across sites, the [00;04m[alpha][00;00m default value is 1.0.[00;00m Only helpful when the input data file contains sequences alignment(s)."
    m_type_fromm: "[00;04m[NNI][00;01m, --nni=[00;04m[NNI][00;00m Use this option to do [00;04m[NNI][00;00m tree topology improvement.[00;00m You may choose the [00;04m[NNI][00;00m type from:[00;00m [00;01mNNI_(B)alME[00;00m (default) or [00;01mNNI_(O)LS[00;00m."
    mbranchm__use: "[00;04mbranch[00;01m, --branch_length=[00;04mbranch[00;00m Use this option to indicate the [00;04mbranch[00;00m length to assign to the tree.[00;00m You may choose the [00;04mbranch[00;00m length from: [00;01m(B)alLS[00;00m (default), [00;01m(O)LS[00;00m or [00;01m(n)one[00;00m. [00;01m(n)one [00;00mis only available with BIONJ, NJ or UNJ.[00;00m Only helpful when not improving the tree topology (no NNI nor SPR)."
    mdatasetsm__datasetsmdatasetsm: "[00;04mdatasets[00;01m, --datasets=[00;04mdatasets[00;00m Use this option to indicate the number of [00;04mdatasets[00;00m in your input[00;00m data file. Default value is 1."
    mreplicatesm__bootstrapmreplicatesm: "[00;04mreplicates[00;01m, --bootstrap=[00;04mreplicates[00;00m Use this option to indicate the number of [00;04mreplicates[00;01m FastME [00;00mwill[00;00m do for bootstrapping. Default value is 0.[00;00m Only helpful when the input data file contains sequences alignment(s)."
    mseedm__seedmseedm: "[00;04mseed[00;01m, --seed=[00;04mseed[00;00m Use this option to initialize randomization with [00;04mseed[00;00m value.[00;00m Only helpful when bootstrapping."
    use_option_want: "[00;00m Use this option if you want FastME only to compute distance matrix.[00;00m Only helpful when the input data file contains sequences alignment(s)."
    mnumber_digitsm_use: "[00;04mnumber of digits[00;00m Use this option to set the number of digits after the dot to use on output.[00;00m Default precision is 12."
    mnumber_threadsm_nbthreadsmnumber: "[00;04mnumber of threads[00;01m, --nb_threads=[00;04mnumber of threads[00;00m Use this option to set the number of threads to use.[00;00m Default [00;04mnumber of threads[00;00m is 8."
    m_default_mvaluem: "[00;04mvalue[00;01m, --verbose=[00;04mvalue[00;00m Sets the verbose level to [00;04mvalue[00;00m [0-3].[00;00m Default [00;04mvalue[00;00m is 0."
  }
}