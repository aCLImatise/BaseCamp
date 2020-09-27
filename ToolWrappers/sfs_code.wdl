version 1.0

task SfsCode {
  input {
    String? mutation
    Boolean? print_gen
    String? print_locus
    Boolean? track_ancestry
    Boolean? track_trajectory
    Boolean? no_seq
    Boolean? _annotate_indicate
    Boolean? _burn_burnset_initial_burnin
    Boolean? _burn_burnset_burnin_length
    Boolean? _psi_psiset
    Boolean? _constraint_fset
    Boolean? t_i_allelefreq
    Boolean? t_vonly_used
    Boolean? te
    Boolean? _errfile_error
    Boolean? _popfreq_filecreate
    Boolean? _propfemale_pfset
    Boolean? _geneffect_pop
    Boolean? tg
    Boolean? _geneconversion_f
    Boolean? _infsitessimulate_infinitesites
    Boolean? _self_sset
    Int? admix
    Boolean? _kappa_rate
    Boolean? tk
    Boolean? length
    Boolean? _linkage_pg
    Boolean? _substmod_mod
    Boolean? _migmat_set
    Boolean? _popsize_sizeset
    Boolean? _sampsize_set
    File? _outfile_fileprint
    Boolean? _ploidy_pset
    Boolean? _tetratype_set
    Boolean? _basefreq_pic
    Boolean? _reportburnfixedreport_mutations
    Boolean? _rho_rhoset
    Boolean? ts
    Boolean? _seed_seed
    Boolean? used_combination_other
    Boolean? thetaset_value_theta
    Boolean? _longindel_insrate
    Boolean? _indel_insrate
    Boolean? _rateclasssites_variation
    Boolean? _rateclassloci_nclasses
    Boolean? _seldisttype_set
    Boolean? _neutpop_popallow
    Boolean? _sex_indicate
    Boolean? _pmalerec_pproportion
    Boolean? _pmalemig_pmaleproportion
    Boolean? _additivespecify_model
    Boolean? _inversions_invrate
  }
  command <<<
    sfs_code \
      ~{if defined(mutation) then ("--mutation " +  '"' + mutation + '"') else ""} \
      ~{if (print_gen) then "--printGen" else ""} \
      ~{if defined(print_locus) then ("--printLocus " +  '"' + print_locus + '"') else ""} \
      ~{if (track_ancestry) then "--trackAncestry" else ""} \
      ~{if (track_trajectory) then "--trackTrajectory" else ""} \
      ~{if (no_seq) then "--noSeq" else ""} \
      ~{if (_annotate_indicate) then "-a" else ""} \
      ~{if (_burn_burnset_initial_burnin) then "-B" else ""} \
      ~{if (_burn_burnset_burnin_length) then "-b" else ""} \
      ~{if (_psi_psiset) then "-C" else ""} \
      ~{if (_constraint_fset) then "-c" else ""} \
      ~{if (t_i_allelefreq) then "-TD" else ""} \
      ~{if (t_vonly_used) then "-Td" else ""} \
      ~{if (te) then "-TE" else ""} \
      ~{if (_errfile_error) then "-e" else ""} \
      ~{if (_popfreq_filecreate) then "-F" else ""} \
      ~{if (_propfemale_pfset) then "-f" else ""} \
      ~{if (_geneffect_pop) then "-G" else ""} \
      ~{if (tg) then "-Tg" else ""} \
      ~{if (_geneconversion_f) then "-H" else ""} \
      ~{if (_infsitessimulate_infinitesites) then "-I" else ""} \
      ~{if (_self_sset) then "-i" else ""} \
      ~{if defined(admix) then ("--admix " +  '"' + admix + '"') else ""} \
      ~{if (_kappa_rate) then "-K" else ""} \
      ~{if (tk) then "-Tk" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (_linkage_pg) then "-l" else ""} \
      ~{if (_substmod_mod) then "-M" else ""} \
      ~{if (_migmat_set) then "-m" else ""} \
      ~{if (_popsize_sizeset) then "-N" else ""} \
      ~{if (_sampsize_set) then "-n" else ""} \
      ~{if (_outfile_fileprint) then "-o" else ""} \
      ~{if (_ploidy_pset) then "-P" else ""} \
      ~{if (_tetratype_set) then "-p" else ""} \
      ~{if (_basefreq_pic) then "-q" else ""} \
      ~{if (_reportburnfixedreport_mutations) then "-R" else ""} \
      ~{if (_rho_rhoset) then "-r" else ""} \
      ~{if (ts) then "-TS" else ""} \
      ~{if (_seed_seed) then "-s" else ""} \
      ~{if (used_combination_other) then "-T" else ""} \
      ~{if (thetaset_value_theta) then "-t" else ""} \
      ~{if (_longindel_insrate) then "-U" else ""} \
      ~{if (_indel_insrate) then "-u" else ""} \
      ~{if (_rateclasssites_variation) then "-V" else ""} \
      ~{if (_rateclassloci_nclasses) then "-v" else ""} \
      ~{if (_seldisttype_set) then "-W" else ""} \
      ~{if (_neutpop_popallow) then "-w" else ""} \
      ~{if (_sex_indicate) then "-x" else ""} \
      ~{if (_pmalerec_pproportion) then "-Y" else ""} \
      ~{if (_pmalemig_pmaleproportion) then "-y" else ""} \
      ~{if (_additivespecify_model) then "-Z" else ""} \
      ~{if (_inversions_invrate) then "-z" else ""}
  >>>
  parameter_meta {
    mutation: "[P <population>] [L <locus>] [S <site>] [G <gamma>]\\nAdd mutation at specified time in a particular [P]opulation, [L]ocus,\\n[S]ite, or selection effect [G]amma."
    print_gen: "print the generation throughout the simulation.  only useful for long\\nsimulations when the generations take a long time to run and you want\\nstatus updates."
    print_locus: "The default is to print output for all loci.  Use this option to print the output of just a single locus (or repeat to print multiple loci)."
    track_ancestry: "[a] <file>\\nprint the ancestry of each position simulated"
    track_trajectory: "[T <time>] [P <pop>] [L <locus>] [S <site>] [R <min_freq> <max_freq> [S] [A [G <gens>]] [M <max_reps>]] [F [a] <file>]\\ntrack the frequency each generation.  [R <min_freq> <max_freq> [S]] sets\\nthe desired freq range at time of sampling ([S]topping first time in\\nrange).  [A] causes simulation to restart immediately after loss, or at (or\\nsome [G]enerations after) time of fixation if max_freq=1."
    no_seq: "don't print ancestral sequence"
    _annotate_indicate: "--annotate    [F <filename>] [<a1> [<a2>...<aR>] [R]]\\nindicate whether each locus is coding/non-coding"
    _burn_burnset_initial_burnin: "--BURN  <burn>\\nset initial burn-in length, generations/P/N"
    _burn_burnset_burnin_length: "--BURN2  <burn>\\nset burn-in length of subsequent iterations > 1"
    _psi_psiset: "*     --PSI  [P <pop>] <psi>\\nset the CpG mutation bias"
    _constraint_fset: "*     --constraint  [P <pop>] [L <locus>] <f0>\\nset the non-lethal mutation rate"
    t_i_allelefreq: "<t> <i> <j> <allele_freq> <N> [locus]\\nonly used with -T to create a domesticated population at time <t>"
    t_vonly_used: "<t> [P <pop>] <v>\\nonly used with -T to set the demographic effects"
    te: "<t> [pop]\\nonly used with -T to end the simulation for a population at time t"
    _errfile_error: "--errfile  [a] <file>\\nprint error to specific file"
    _popfreq_filecreate: "--popFreq  [a] <file>\\ncreate file with population & sample frequencies for each event"
    _propfemale_pfset: "--propFemale [P <pop>] <pf>\\nset the proportion of females in a population"
    _geneffect_pop: "*     --GenEffect  <pop> <G>\\nset the generation effect for a population"
    tg: "[P <pop>] <alpha>\\nonly used with -T to set the exponential population growth rate"
    _geneconversion_f: "*     --geneConversion  [P <pop>] [B <BGC>] <f> <lambda>\\nset parameters for gene conversion"
    _infsitessimulate_infinitesites: "--INF_SITES\\nsimulate infinite-sites model.  This only pertains to segregating\\nvariants.  For long simulations, sites that previously received a\\nfixation can mutate again."
    _self_sset: "*     --self  [P <pop>] <s>\\nset the selfing [not really inbreeding] rate"
    admix: "<new_p> <size> <n_pop> <P_1>...<P_npop> [M <m_1>...<m_npop>] <f_1>...<f_npop>\\ncreate new population with specified size by joining <n_pops> existing\\npopulations"
    _kappa_rate: "*     --KAPPA  [P <pop>] <kappa>\\nset transition transversion rate"
    tk: "[P <pop>] <K> <r>\\nused with -T to implement logistic growth rate"
    length: "<nloci> <L1> [<L2>...<Ln>] [R]\\nset sequence lengths and number of loci"
    _linkage_pg: "--linkage  <p/g> <d1> [<d2>...<dn-1>] [R]\\nset linkage between adjacent loci"
    _substmod_mod: "--substMod  <mod> [args]\\nset the substitution model"
    _migmat_set: "*     --mig_mat {see documentation...}\\nset the migration rates to and from populations"
    _popsize_sizeset: "*     --popSize  [P <pop>] <size>\\nset the effective size of a population"
    _sampsize_set: "*     --sampSize  [P <pop>] [R <tau_d>] [S <tau_1>]] <SS1> [<SS2>...<SSNpops>]\\nset the number of individuals sampled from a population.  When used\\nas -Tn, a time must be specified for sampling, and opens the ability for\\n[R]ecurrent sampling starting at the pre-specified time, and repeat every\\ntau_d*PN_A generations until the end of the simulation, or a specified\\n[S]top time tau_1.  Note that the sample size must be specified at the\\nend (either a single number to be applied to all populations or include\\na number for every population).  You can use -Tn multiple times."
    _outfile_fileprint: "--outfile  [a] <file>\\nprint output to specific file"
    _ploidy_pset: "--ploidy  <P>\\nset the ploidy, P=1 is haploid, P=2 is diploid, P=4 is tetraploid"
    _tetratype_set: "--tetraType  <0/1>\\nset the type of tetraploid [allo- or auto-]"
    _basefreq_pic: "*   --baseFreq [P <pop>] <pi_C> <pi_G> <pi_T> <pi_A>\\nset the equilibrium base frequencies (default = 0.25)"
    _reportburnfixedreport_mutations: "--ReportBurnFixed\\nreport mutations that fixed during burn-in"
    _rho_rhoset: "*     --rho  [P <pop>] [F <filename>] <rho>\\nset the recombination rate for a population"
    ts: "<t> <i> <j>\\nused with -T to split the population at a given time"
    _seed_seed: "--seed  <value>\\nset seed for random number generator"
    used_combination_other: "*\\nused in combination with other parameters for timed effects"
    thetaset_value_theta: "*     [P <pop>] <theta>\\nset the value of theta for a population"
    _longindel_insrate: "*     --longIndel  [P <pop>] <INSrate> <DELrate> <mean_length>\\nrate of insertion/deletions with Poisson length distribution"
    _indel_insrate: "*     --indel  [P <pop>] <INSrate> <DELrate> <mean_length>\\nrate of insertion/deletions with geometric length distribution"
    _rateclasssites_variation: "--rateClassSites  [P <pop>] <nclasses> <alpha>\\nmutation rate variation among SITES"
    _rateclassloci_nclasses: "--rateClassLoci  [P <pop>] <nclasses> <alpha>\\nmutation rate variation among LOCI"
    _seldisttype_set: "*  --selDistType  [P <pop>] [L <locus>] [F <allele_freq> [w] [T [R <min_freq> <max_freq> [S] [A [G <gens>]] [M <max_reps>]] [F [a] <file>]]] <type> [args]\\nset distribution of selective effects.  See documentation for proper\\nusage of <type> [args].  Set the distribution for a [P]opulation or\\n[L]ocus.  In -TW mode, change selection coefficient of an existing\\npolymorphism with a particular [F]requency.  If a frequency is specified,\\nyou can [T]rack the allele to ensure that it achieves a particular\\nfrequency [R]ange at time of sampling ([S]top the first time in range),\\n[A]utomatically restart if the allele is lost (up to a [M]aximal number of\\ntries), and output the trajectory to a [F]ile (or [a]ppend to existing).\\nNote that tracking a mutation here prevents you from tracking a locus using\\n--trackTrajectory.  Unfortunately, tracking only occurs after selection\\ncoefficient changes."
    _neutpop_popallow: "*     --neutPop  <pop>\\nallow a population to be neutral"
    _sex_indicate: "--sex  <x1> [<x2 >..<xR>] [R]\\nindicate whether each locus is autosomal/sex"
    _pmalerec_pproportion: "*     --pMaleRec  [P <pop>] <p>\\nproportion of recombinants occuring in male meioses vs female."
    _pmalemig_pmaleproportion: "*     --pMaleMig  [P <pop>] <pmale>\\nproportion of migrants that are male"
    _additivespecify_model: "--additive\\nspecify an additive model of selective effects instead of multiplicative"
    _inversions_invrate: "*     --inversions  [P <pop>] <INVrate> <mean_length>\\nrate of inversions with Poisson length distribution\\n"
  }
  output {
    File out_stdout = stdout()
    File out__outfile_fileprint = "${in__outfile_fileprint}"
  }
}