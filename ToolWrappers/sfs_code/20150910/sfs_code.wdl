version 1.0

task SfsCode {
  input {
    String? mutation
    Boolean? print_gen
    String? print_locus
    Boolean? track_ancestry
    Boolean? track_trajectory
    Boolean? no_seq
    Boolean? annotate
    Boolean? burn
    Boolean? burn_two
    Boolean? _psi_psiset
    Boolean? _constraint_fset
    Boolean? t_i_j
    Boolean? t_vonly_used
    Boolean? te
    Boolean? errfile
    Boolean? pop_freq
    Boolean? prop_female
    Boolean? _geneffect_pop
    Boolean? tg
    Boolean? _geneconversion_lambdaset
    Boolean? inf_sites
    Boolean? _self_sset
    Int? admix
    Boolean? kappa_kappaset_transition
    Boolean? tk
    Boolean? length
    Boolean? linkage
    Boolean? subst_mod
    Boolean? _migmat_set
    Boolean? _popsize_sizeset
    Boolean? _sampsize_set
    File? outfile
    Boolean? ploidy
    Boolean? tetra_type
    Boolean? _basefreq_pic
    Boolean? report_burn_fixed
    Boolean? rho_rhoset_rate
    Boolean? ts
    Boolean? seed
    Boolean? used_combination_other
    Boolean? thetaset_value_theta
    Boolean? _longindel_meanlengthrate
    Boolean? indel_insrate_delrate
    Boolean? rate_class_sites
    Boolean? rate_class_loci
    Boolean? _seldisttype_set
    Boolean? neutpop_popallow_population
    Boolean? sex
    Boolean? pmalerec_pproportion_recombinants
    Boolean? pmalemig_pmaleproportion_migrants
    Boolean? additive
    Boolean? inversions_invrate_meanlengthrate
  }
  command <<<
    sfs_code \
      ~{if defined(mutation) then ("--mutation " +  '"' + mutation + '"') else ""} \
      ~{if (print_gen) then "--printGen" else ""} \
      ~{if defined(print_locus) then ("--printLocus " +  '"' + print_locus + '"') else ""} \
      ~{if (track_ancestry) then "--trackAncestry" else ""} \
      ~{if (track_trajectory) then "--trackTrajectory" else ""} \
      ~{if (no_seq) then "--noSeq" else ""} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (burn) then "--BURN" else ""} \
      ~{if (burn_two) then "--BURN2" else ""} \
      ~{if (_psi_psiset) then "-C" else ""} \
      ~{if (_constraint_fset) then "-c" else ""} \
      ~{if (t_i_j) then "-TD" else ""} \
      ~{if (t_vonly_used) then "-Td" else ""} \
      ~{if (te) then "-TE" else ""} \
      ~{if (errfile) then "--errfile" else ""} \
      ~{if (pop_freq) then "--popFreq" else ""} \
      ~{if (prop_female) then "--propFemale" else ""} \
      ~{if (_geneffect_pop) then "-G" else ""} \
      ~{if (tg) then "-Tg" else ""} \
      ~{if (_geneconversion_lambdaset) then "-H" else ""} \
      ~{if (inf_sites) then "--INF_SITES" else ""} \
      ~{if (_self_sset) then "-i" else ""} \
      ~{if defined(admix) then ("--admix " +  '"' + admix + '"') else ""} \
      ~{if (kappa_kappaset_transition) then "-K" else ""} \
      ~{if (tk) then "-Tk" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (linkage) then "--linkage" else ""} \
      ~{if (subst_mod) then "--substMod" else ""} \
      ~{if (_migmat_set) then "-m" else ""} \
      ~{if (_popsize_sizeset) then "-N" else ""} \
      ~{if (_sampsize_set) then "-n" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (ploidy) then "--ploidy" else ""} \
      ~{if (tetra_type) then "--tetraType" else ""} \
      ~{if (_basefreq_pic) then "-q" else ""} \
      ~{if (report_burn_fixed) then "--ReportBurnFixed" else ""} \
      ~{if (rho_rhoset_rate) then "-r" else ""} \
      ~{if (ts) then "-TS" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (used_combination_other) then "-T" else ""} \
      ~{if (thetaset_value_theta) then "-t" else ""} \
      ~{if (_longindel_meanlengthrate) then "-U" else ""} \
      ~{if (indel_insrate_delrate) then "-u" else ""} \
      ~{if (rate_class_sites) then "--rateClassSites" else ""} \
      ~{if (rate_class_loci) then "--rateClassLoci" else ""} \
      ~{if (_seldisttype_set) then "-W" else ""} \
      ~{if (neutpop_popallow_population) then "-w" else ""} \
      ~{if (sex) then "--sex" else ""} \
      ~{if (pmalerec_pproportion_recombinants) then "-Y" else ""} \
      ~{if (pmalemig_pmaleproportion_migrants) then "-y" else ""} \
      ~{if (additive) then "--additive" else ""} \
      ~{if (inversions_invrate_meanlengthrate) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mutation: "[P <population>] [L <locus>] [S <site>] [G <gamma>]\\nAdd mutation at specified time in a particular [P]opulation, [L]ocus,\\n[S]ite, or selection effect [G]amma."
    print_gen: "print the generation throughout the simulation.  only useful for long\\nsimulations when the generations take a long time to run and you want\\nstatus updates."
    print_locus: "The default is to print output for all loci.  Use this option to print the output of just a single locus (or repeat to print multiple loci)."
    track_ancestry: "[a] <file>\\nprint the ancestry of each position simulated"
    track_trajectory: "[T <time>] [P <pop>] [L <locus>] [S <site>] [R <min_freq> <max_freq> [S] [A [G <gens>]] [M <max_reps>]] [F [a] <file>]\\ntrack the frequency each generation.  [R <min_freq> <max_freq> [S]] sets\\nthe desired freq range at time of sampling ([S]topping first time in\\nrange).  [A] causes simulation to restart immediately after loss, or at (or\\nsome [G]enerations after) time of fixation if max_freq=1."
    no_seq: "don't print ancestral sequence"
    annotate: "[F <filename>] [<a1> [<a2>...<aR>] [R]]\\nindicate whether each locus is coding/non-coding"
    burn: "<burn>\\nset initial burn-in length, generations/P/N"
    burn_two: "<burn>\\nset burn-in length of subsequent iterations > 1"
    _psi_psiset: "*     --PSI  [P <pop>] <psi>\\nset the CpG mutation bias"
    _constraint_fset: "*     --constraint  [P <pop>] [L <locus>] <f0>\\nset the non-lethal mutation rate"
    t_i_j: "<t> <i> <j> <allele_freq> <N> [locus]\\nonly used with -T to create a domesticated population at time <t>"
    t_vonly_used: "<t> [P <pop>] <v>\\nonly used with -T to set the demographic effects"
    te: "<t> [pop]\\nonly used with -T to end the simulation for a population at time t"
    errfile: "[a] <file>\\nprint error to specific file"
    pop_freq: "[a] <file>\\ncreate file with population & sample frequencies for each event"
    prop_female: "[P <pop>] <pf>\\nset the proportion of females in a population"
    _geneffect_pop: "*     --GenEffect  <pop> <G>\\nset the generation effect for a population"
    tg: "[P <pop>] <alpha>\\nonly used with -T to set the exponential population growth rate"
    _geneconversion_lambdaset: "*     --geneConversion  [P <pop>] [B <BGC>] <f> <lambda>\\nset parameters for gene conversion"
    inf_sites: "simulate infinite-sites model.  This only pertains to segregating\\nvariants.  For long simulations, sites that previously received a\\nfixation can mutate again."
    _self_sset: "*     --self  [P <pop>] <s>\\nset the selfing [not really inbreeding] rate"
    admix: "<new_p> <size> <n_pop> <P_1>...<P_npop> [M <m_1>...<m_npop>] <f_1>...<f_npop>\\ncreate new population with specified size by joining <n_pops> existing\\npopulations"
    kappa_kappaset_transition: "*     --KAPPA  [P <pop>] <kappa>\\nset transition transversion rate"
    tk: "[P <pop>] <K> <r>\\nused with -T to implement logistic growth rate"
    length: "<nloci> <L1> [<L2>...<Ln>] [R]\\nset sequence lengths and number of loci"
    linkage: "<p/g> <d1> [<d2>...<dn-1>] [R]\\nset linkage between adjacent loci"
    subst_mod: "<mod> [args]\\nset the substitution model"
    _migmat_set: "*     --mig_mat {see documentation...}\\nset the migration rates to and from populations"
    _popsize_sizeset: "*     --popSize  [P <pop>] <size>\\nset the effective size of a population"
    _sampsize_set: "*     --sampSize  [P <pop>] [R <tau_d>] [S <tau_1>]] <SS1> [<SS2>...<SSNpops>]\\nset the number of individuals sampled from a population.  When used\\nas -Tn, a time must be specified for sampling, and opens the ability for\\n[R]ecurrent sampling starting at the pre-specified time, and repeat every\\ntau_d*PN_A generations until the end of the simulation, or a specified\\n[S]top time tau_1.  Note that the sample size must be specified at the\\nend (either a single number to be applied to all populations or include\\na number for every population).  You can use -Tn multiple times."
    outfile: "[a] <file>\\nprint output to specific file"
    ploidy: "<P>\\nset the ploidy, P=1 is haploid, P=2 is diploid, P=4 is tetraploid"
    tetra_type: "<0/1>\\nset the type of tetraploid [allo- or auto-]"
    _basefreq_pic: "*   --baseFreq [P <pop>] <pi_C> <pi_G> <pi_T> <pi_A>\\nset the equilibrium base frequencies (default = 0.25)"
    report_burn_fixed: "report mutations that fixed during burn-in"
    rho_rhoset_rate: "*     --rho  [P <pop>] [F <filename>] <rho>\\nset the recombination rate for a population"
    ts: "<t> <i> <j>\\nused with -T to split the population at a given time"
    seed: "<value>\\nset seed for random number generator"
    used_combination_other: "*\\nused in combination with other parameters for timed effects"
    thetaset_value_theta: "*     [P <pop>] <theta>\\nset the value of theta for a population"
    _longindel_meanlengthrate: "*     --longIndel  [P <pop>] <INSrate> <DELrate> <mean_length>\\nrate of insertion/deletions with Poisson length distribution"
    indel_insrate_delrate: "*     --indel  [P <pop>] <INSrate> <DELrate> <mean_length>\\nrate of insertion/deletions with geometric length distribution"
    rate_class_sites: "[P <pop>] <nclasses> <alpha>\\nmutation rate variation among SITES"
    rate_class_loci: "[P <pop>] <nclasses> <alpha>\\nmutation rate variation among LOCI"
    _seldisttype_set: "*  --selDistType  [P <pop>] [L <locus>] [F <allele_freq> [w] [T [R <min_freq> <max_freq> [S] [A [G <gens>]] [M <max_reps>]] [F [a] <file>]]] <type> [args]\\nset distribution of selective effects.  See documentation for proper\\nusage of <type> [args].  Set the distribution for a [P]opulation or\\n[L]ocus.  In -TW mode, change selection coefficient of an existing\\npolymorphism with a particular [F]requency.  If a frequency is specified,\\nyou can [T]rack the allele to ensure that it achieves a particular\\nfrequency [R]ange at time of sampling ([S]top the first time in range),\\n[A]utomatically restart if the allele is lost (up to a [M]aximal number of\\ntries), and output the trajectory to a [F]ile (or [a]ppend to existing).\\nNote that tracking a mutation here prevents you from tracking a locus using\\n--trackTrajectory.  Unfortunately, tracking only occurs after selection\\ncoefficient changes."
    neutpop_popallow_population: "*     --neutPop  <pop>\\nallow a population to be neutral"
    sex: "<x1> [<x2 >..<xR>] [R]\\nindicate whether each locus is autosomal/sex"
    pmalerec_pproportion_recombinants: "*     --pMaleRec  [P <pop>] <p>\\nproportion of recombinants occuring in male meioses vs female."
    pmalemig_pmaleproportion_migrants: "*     --pMaleMig  [P <pop>] <pmale>\\nproportion of migrants that are male"
    additive: "specify an additive model of selective effects instead of multiplicative"
    inversions_invrate_meanlengthrate: "*     --inversions  [P <pop>] <INVrate> <mean_length>\\nrate of inversions with Poisson length distribution\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}