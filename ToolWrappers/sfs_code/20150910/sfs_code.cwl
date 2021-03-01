class: CommandLineTool
id: sfs_code.cwl
inputs:
- id: in_mutation
  doc: "[P <population>] [L <locus>] [S <site>] [G <gamma>]\nAdd mutation at specified\
    \ time in a particular [P]opulation, [L]ocus,\n[S]ite, or selection effect [G]amma."
  type: string?
  inputBinding:
    prefix: --mutation
- id: in_print_gen
  doc: "print the generation throughout the simulation.  only useful for long\nsimulations\
    \ when the generations take a long time to run and you want\nstatus updates."
  type: boolean?
  inputBinding:
    prefix: --printGen
- id: in_print_locus
  doc: The default is to print output for all loci.  Use this option to print the
    output of just a single locus (or repeat to print multiple loci).
  type: string?
  inputBinding:
    prefix: --printLocus
- id: in_track_ancestry
  doc: "[a] <file>\nprint the ancestry of each position simulated"
  type: boolean?
  inputBinding:
    prefix: --trackAncestry
- id: in_track_trajectory
  doc: "[T <time>] [P <pop>] [L <locus>] [S <site>] [R <min_freq> <max_freq> [S] [A\
    \ [G <gens>]] [M <max_reps>]] [F [a] <file>]\ntrack the frequency each generation.\
    \  [R <min_freq> <max_freq> [S]] sets\nthe desired freq range at time of sampling\
    \ ([S]topping first time in\nrange).  [A] causes simulation to restart immediately\
    \ after loss, or at (or\nsome [G]enerations after) time of fixation if max_freq=1."
  type: boolean?
  inputBinding:
    prefix: --trackTrajectory
- id: in_no_seq
  doc: don't print ancestral sequence
  type: boolean?
  inputBinding:
    prefix: --noSeq
- id: in_annotate
  doc: "[F <filename>] [<a1> [<a2>...<aR>] [R]]\nindicate whether each locus is coding/non-coding"
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_burn
  doc: "<burn>\nset initial burn-in length, generations/P/N"
  type: boolean?
  inputBinding:
    prefix: --BURN
- id: in_burn_two
  doc: "<burn>\nset burn-in length of subsequent iterations > 1"
  type: boolean?
  inputBinding:
    prefix: --BURN2
- id: in__psi_psiset
  doc: "*     --PSI  [P <pop>] <psi>\nset the CpG mutation bias"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in__constraint_fset
  doc: "*     --constraint  [P <pop>] [L <locus>] <f0>\nset the non-lethal mutation\
    \ rate"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_t_i_j
  doc: "<t> <i> <j> <allele_freq> <N> [locus]\nonly used with -T to create a domesticated\
    \ population at time <t>"
  type: boolean?
  inputBinding:
    prefix: -TD
- id: in_t_vonly_used
  doc: "<t> [P <pop>] <v>\nonly used with -T to set the demographic effects"
  type: boolean?
  inputBinding:
    prefix: -Td
- id: in_te
  doc: "<t> [pop]\nonly used with -T to end the simulation for a population at time\
    \ t"
  type: boolean?
  inputBinding:
    prefix: -TE
- id: in_errfile
  doc: "[a] <file>\nprint error to specific file"
  type: boolean?
  inputBinding:
    prefix: --errfile
- id: in_pop_freq
  doc: "[a] <file>\ncreate file with population & sample frequencies for each event"
  type: boolean?
  inputBinding:
    prefix: --popFreq
- id: in_prop_female
  doc: "[P <pop>] <pf>\nset the proportion of females in a population"
  type: boolean?
  inputBinding:
    prefix: --propFemale
- id: in__geneffect_pop
  doc: "*     --GenEffect  <pop> <G>\nset the generation effect for a population"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_tg
  doc: "[P <pop>] <alpha>\nonly used with -T to set the exponential population growth\
    \ rate"
  type: boolean?
  inputBinding:
    prefix: -Tg
- id: in__geneconversion_lambdaset
  doc: "*     --geneConversion  [P <pop>] [B <BGC>] <f> <lambda>\nset parameters for\
    \ gene conversion"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_inf_sites
  doc: "simulate infinite-sites model.  This only pertains to segregating\nvariants.\
    \  For long simulations, sites that previously received a\nfixation can mutate\
    \ again."
  type: boolean?
  inputBinding:
    prefix: --INF_SITES
- id: in__self_sset
  doc: "*     --self  [P <pop>] <s>\nset the selfing [not really inbreeding] rate"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_admix
  doc: "<new_p> <size> <n_pop> <P_1>...<P_npop> [M <m_1>...<m_npop>] <f_1>...<f_npop>\n\
    create new population with specified size by joining <n_pops> existing\npopulations"
  type: long?
  inputBinding:
    prefix: --admix
- id: in_kappa_kappaset_transition
  doc: "*     --KAPPA  [P <pop>] <kappa>\nset transition transversion rate"
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_tk
  doc: "[P <pop>] <K> <r>\nused with -T to implement logistic growth rate"
  type: boolean?
  inputBinding:
    prefix: -Tk
- id: in_length
  doc: "<nloci> <L1> [<L2>...<Ln>] [R]\nset sequence lengths and number of loci"
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_linkage
  doc: "<p/g> <d1> [<d2>...<dn-1>] [R]\nset linkage between adjacent loci"
  type: boolean?
  inputBinding:
    prefix: --linkage
- id: in_subst_mod
  doc: "<mod> [args]\nset the substitution model"
  type: boolean?
  inputBinding:
    prefix: --substMod
- id: in__migmat_set
  doc: "*     --mig_mat {see documentation...}\nset the migration rates to and from\
    \ populations"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__popsize_sizeset
  doc: "*     --popSize  [P <pop>] <size>\nset the effective size of a population"
  type: boolean?
  inputBinding:
    prefix: -N
- id: in__sampsize_set
  doc: "*     --sampSize  [P <pop>] [R <tau_d>] [S <tau_1>]] <SS1> [<SS2>...<SSNpops>]\n\
    set the number of individuals sampled from a population.  When used\nas -Tn, a\
    \ time must be specified for sampling, and opens the ability for\n[R]ecurrent\
    \ sampling starting at the pre-specified time, and repeat every\ntau_d*PN_A generations\
    \ until the end of the simulation, or a specified\n[S]top time tau_1.  Note that\
    \ the sample size must be specified at the\nend (either a single number to be\
    \ applied to all populations or include\na number for every population).  You\
    \ can use -Tn multiple times."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_outfile
  doc: "[a] <file>\nprint output to specific file"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_ploidy
  doc: "<P>\nset the ploidy, P=1 is haploid, P=2 is diploid, P=4 is tetraploid"
  type: boolean?
  inputBinding:
    prefix: --ploidy
- id: in_tetra_type
  doc: "<0/1>\nset the type of tetraploid [allo- or auto-]"
  type: boolean?
  inputBinding:
    prefix: --tetraType
- id: in__basefreq_pic
  doc: "*   --baseFreq [P <pop>] <pi_C> <pi_G> <pi_T> <pi_A>\nset the equilibrium\
    \ base frequencies (default = 0.25)"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_report_burn_fixed
  doc: report mutations that fixed during burn-in
  type: boolean?
  inputBinding:
    prefix: --ReportBurnFixed
- id: in_rho_rhoset_rate
  doc: "*     --rho  [P <pop>] [F <filename>] <rho>\nset the recombination rate for\
    \ a population"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_ts
  doc: "<t> <i> <j>\nused with -T to split the population at a given time"
  type: boolean?
  inputBinding:
    prefix: -TS
- id: in_seed
  doc: "<value>\nset seed for random number generator"
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_used_combination_other
  doc: "*\nused in combination with other parameters for timed effects"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_thetaset_value_theta
  doc: "*     [P <pop>] <theta>\nset the value of theta for a population"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in__longindel_meanlengthrate
  doc: "*     --longIndel  [P <pop>] <INSrate> <DELrate> <mean_length>\nrate of insertion/deletions\
    \ with Poisson length distribution"
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_indel_insrate_delrate
  doc: "*     --indel  [P <pop>] <INSrate> <DELrate> <mean_length>\nrate of insertion/deletions\
    \ with geometric length distribution"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_rate_class_sites
  doc: "[P <pop>] <nclasses> <alpha>\nmutation rate variation among SITES"
  type: boolean?
  inputBinding:
    prefix: --rateClassSites
- id: in_rate_class_loci
  doc: "[P <pop>] <nclasses> <alpha>\nmutation rate variation among LOCI"
  type: boolean?
  inputBinding:
    prefix: --rateClassLoci
- id: in__seldisttype_set
  doc: "*  --selDistType  [P <pop>] [L <locus>] [F <allele_freq> [w] [T [R <min_freq>\
    \ <max_freq> [S] [A [G <gens>]] [M <max_reps>]] [F [a] <file>]]] <type> [args]\n\
    set distribution of selective effects.  See documentation for proper\nusage of\
    \ <type> [args].  Set the distribution for a [P]opulation or\n[L]ocus.  In -TW\
    \ mode, change selection coefficient of an existing\npolymorphism with a particular\
    \ [F]requency.  If a frequency is specified,\nyou can [T]rack the allele to ensure\
    \ that it achieves a particular\nfrequency [R]ange at time of sampling ([S]top\
    \ the first time in range),\n[A]utomatically restart if the allele is lost (up\
    \ to a [M]aximal number of\ntries), and output the trajectory to a [F]ile (or\
    \ [a]ppend to existing).\nNote that tracking a mutation here prevents you from\
    \ tracking a locus using\n--trackTrajectory.  Unfortunately, tracking only occurs\
    \ after selection\ncoefficient changes."
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_neutpop_popallow_population
  doc: "*     --neutPop  <pop>\nallow a population to be neutral"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_sex
  doc: "<x1> [<x2 >..<xR>] [R]\nindicate whether each locus is autosomal/sex"
  type: boolean?
  inputBinding:
    prefix: --sex
- id: in_pmalerec_pproportion_recombinants
  doc: "*     --pMaleRec  [P <pop>] <p>\nproportion of recombinants occuring in male\
    \ meioses vs female."
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_pmalemig_pmaleproportion_migrants
  doc: "*     --pMaleMig  [P <pop>] <pmale>\nproportion of migrants that are male"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_additive
  doc: specify an additive model of selective effects instead of multiplicative
  type: boolean?
  inputBinding:
    prefix: --additive
- id: in_inversions_invrate_meanlengthrate
  doc: "*     --inversions  [P <pop>] <INVrate> <mean_length>\nrate of inversions\
    \ with Poisson length distribution\n"
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "[a] <file>\nprint output to specific file"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- sfs_code
