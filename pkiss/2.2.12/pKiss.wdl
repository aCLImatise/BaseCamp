version 1.0

task PKiss {
  input {
    String? mode
    Float? absolute_deviation
    Float? relative_deviation
    Int? shape_level
    Float? low_prob_filter
    Float? output_low_prob_filter
    Int? window_size
    Int? window_increment
    Int? strategy
    Int? min_hairpin_length
    Int? max_knot_size
    Float? h_penalty
    Float? k_penalty
    Int? allow_lp
    Float? temperature
    File? param
    Directory? bin_path
    String? bin_prefix
    Int? prob_decimals
    Int? verbose
    File? varna
    Boolean? options
    String mfe
    String sub_opt
    String local
    String shapes
    String probs
    String cast
    String eval
    String probabilities_dot
  }
  command <<<
    pKiss \
      ~{mfe} \
      ~{sub_opt} \
      ~{local} \
      ~{shapes} \
      ~{probs} \
      ~{cast} \
      ~{eval} \
      ~{probabilities_dot} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(absolute_deviation) then ("--absoluteDeviation " +  '"' + absolute_deviation + '"') else ""} \
      ~{if defined(relative_deviation) then ("--relativeDeviation " +  '"' + relative_deviation + '"') else ""} \
      ~{if defined(shape_level) then ("--shapeLevel " +  '"' + shape_level + '"') else ""} \
      ~{if defined(low_prob_filter) then ("--lowProbFilter " +  '"' + low_prob_filter + '"') else ""} \
      ~{if defined(output_low_prob_filter) then ("--outputLowProbFilter " +  '"' + output_low_prob_filter + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(window_increment) then ("--windowIncrement " +  '"' + window_increment + '"') else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if defined(min_hairpin_length) then ("--minHairpinLength " +  '"' + min_hairpin_length + '"') else ""} \
      ~{if defined(max_knot_size) then ("--maxKnotSize " +  '"' + max_knot_size + '"') else ""} \
      ~{if defined(h_penalty) then ("--Hpenalty " +  '"' + h_penalty + '"') else ""} \
      ~{if defined(k_penalty) then ("--Kpenalty " +  '"' + k_penalty + '"') else ""} \
      ~{if defined(allow_lp) then ("--allowLP " +  '"' + allow_lp + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(param) then ("--param " +  '"' + param + '"') else ""} \
      ~{if defined(bin_path) then ("--binPath " +  '"' + bin_path + '"') else ""} \
      ~{if defined(bin_prefix) then ("--binPrefix " +  '"' + bin_prefix + '"') else ""} \
      ~{if defined(prob_decimals) then ("--probDecimals " +  '"' + prob_decimals + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(varna) then ("--varna " +  '"' + varna + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    mode: ": Select the computation mode. Available modes are \\\"mfe\\\",\\n\\\"subopt\\\", \\\"enforce\\\", \\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\",\\n\\\"eval\\\", \\\"abstract\\\". Omit the ticks on input.\\nDefault is \\\"subopt\\\"."
    absolute_deviation: ": This sets the energy range as an absolute value\\nof the minimum free energy. For example, when\\n--absoluteDeviation 10.0 is specified, and the\\nminimum free energy is -10.0 kcal/mol, the\\nenergy range is set to 0.0 to -10.0 kcal/mol.\\n<float> must be a positive floating point\\nnumber.\\nConnot be combined with --relativeDeviation.\\nOnly available in modes: \\\"subopt\\\", \\\"local\\\",\\n\\\"shapes\\\", \\\"cast\\\"."
    relative_deviation: ": This sets the energy range as percentage value\\nof the minimum free energy. For example, when\\n--relativeDeviation 5.0 is specified, and the\\nminimum free energy is -10.0 kcal/mol, the\\nenergy range is set to -9.5 to -10.0 kcal/mol.\\n<float> must be a positive floating point\\nnumber.\\nBy default, --relativeDeviation is set to 10 %.\\nCannot be combined with --absoluteDeviation.\\nOnly available in modes: \\\"subopt\\\", \\\"local\\\",\\n\\\"shapes\\\", \\\"cast\\\"."
    shape_level: ": Set shape abstraction level. Currently, we provide five\\ndifferent levels (see 1] for their definitions), where 5\\nis the most abstract and 1 the most concrete one.\\n<int> must be a number between 5 and 1.\\nDefault is 5 (the most abstract one).\\nOnly available in modes: \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\",\\n\\\"eval\\\", \\\"abstract\\\"."
    low_prob_filter: ": This option sets a barrier for filtering out\\nresults with very low probabilities during\\ncalculation. The default value here is 1e-06, which\\ngives a significant speedup compared to a disabled\\nfilter. (See 4] for details.) Note that this filter\\ncan have a slight influence on the overall results.\\nTo disable this filter, use option --lowProbFilter\\n0.\\n<float> must be a positive floating point number\\nsmaller than 1.\\nOnly available in mode: \\\"probs\\\"."
    output_low_prob_filter: ": This option sets a filter for omitting low\\nprobability results during output. It is just\\nfor reporting convenience. Unlike probability\\ncutoff filter, this option does not have any\\ninfluence on runtime or probabilities beyond\\nthis value. To disable this filter, use\\noption --outputLowProbFilter 0.\\n<float> must be a positive floating point\\nnumber smaller than 1.\\nOnly available in mode: \\\"probs\\\"."
    window_size: ": Activates window mode and computes substrings of size\\n<int> for the input. After computation for the first\\n<int> bases is done, the window is pushed <y> bases to\\nthe right and the next computation is startet. <y> is\\nset by --windowIncrement.\\n<int> must be a non-zero positive integer, smaller than\\nthe input length.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\"."
    window_increment: ": If --windowSize is given, this parameter sets the\\noffset for the next window to <int> bases.\\n<int> must be a non-zero positive integer, smaller\\nthan --windowSize.\\nDefault is 1.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\",\\n\\\"enforce\\\", \\\"local\\\", \\\"shapes\\\", \\\"probs\\\"."
    strategy: ": Select pseudoknot strategy. There are four different\\nstrategies how to compute kissing hairpins (K-type\\npseudoknots). We suggest 'A', see [8] for details. If you\\nchoose 'P' only H-type pseudoknots can be computed.\\nAvailable strategies are 'A','B','C','D' and 'P'. On\\ninput omit the ticks.\\nDefault is 'A'.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\"."
    min_hairpin_length: ": Set minimal hairpin length for K-type pseudoknots.\\nThe first heuristic step in computung kissing\\nhairpins, is to find stable, non-interrupted\\nhelices. These helices must have a minimal length,\\ni.e. number of stacked base-pairs, of <int>. The\\nhigher the value, the faster the program, but also\\nthe less accurate. This affects only the stems of\\nboth hairpins, not their kissing helix!\\n<int> must be a positive number.\\nDefault is 2."
    max_knot_size: ": Set a maximal pseudoknot size. To speed up computation,\\nyou can limit the number of bases involved in a\\npseudoknot (and all it's loop regions) by giving <int>.\\nOnly positive numbers are allowed for <int>\\nBy default, there is no limitation, i.e. --maxKnotSize\\nis set to input length.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\"."
    h_penalty: ": Set init. energy penalty for an H-type pseudoknot.\\nThermodynamic energy parameters for pseudoknots have not\\nbeen measured in a wet lab, yet. Thus, you might want to\\nset the penalty for opening a H-type pseudoknot\\nyourself.\\n<float> must be a floating point number.\\nDefault is 9 kcal/mol.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\", \\\"eval\\\"."
    k_penalty: ": Set init. energy penalty for an K-type pseudoknot.\\nThermodynamic energy parameters for pseudoknots have not\\nbeen measured in a wet lab, yet. Thus, you might want to\\nset the penalty for opening a K-type pseudoknot\\nyourself.\\n<float> must be a floating point number.\\nDefault is 12 kcal/mol.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\", \\\"eval\\\"."
    allow_lp: ": Lonely base pairs have no stabilizing effect, because they\\ncannot stack on another pair, but they heavily increase the\\nsize of the folding space. Thus, we normally forbid them.\\nShould you want to allow them set <int> to 1.\\n<int> must be 0 (=don't allow lonely base pairs) or 1 (=\\nallow them).\\nDefault is 0, i.e. no lonely base pairs."
    temperature: ": Rescale energy parameters to a temperature of temp C.\\n<float> must be a floating point number.\\nDefault is 37 C.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\", \\\"eval\\\"."
    param: ": Read energy parameters from paramfile, instead of using\\nthe default parameter set. See the RNAlib (Vienna RNA\\npackage) documentation for details on the file format.\\nDefault are parameters released by the Turner group in\\n2004 (see [5] and [6]).\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\", \\\"eval\\\"."
    bin_path: ": pKiss expects that according Bellman's GAP compiled\\nbinaries are located in the same directory as the Perl\\nwrapper is. Should you moved them into another\\ndirectory, you must set --binPath to this new location!"
    bin_prefix: ": pKiss expects a special naming schema for the\\naccording Bellman's GAP compiled binaries. On default,\\neach binary is named \\\"pKiss_\\\", followed by the mode,\\nfollowed by \\\"_window\\\" for the window mode version.\\nThus, for non-window mode \\\"subopt\\\" the name would be\\n\\\"pKiss_subopt\\\". With --binPrefix you can change the\\nprefix into some arbitary one."
    prob_decimals: ": Sets the number of digits used for printing shape"
    verbose: ": Prints the actual command for Bellman's GAP binary."
    varna: ": Provide a file name to which a HTML formatted version of\\nthe output should be saved in.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"enforce\\\",\\n\\\"local\\\", \\\"shapes\\\", \\\"probs\\\", \\\"cast\\\", \\\"eval\\\"."
    options: ""
    mfe: ": Computes the single energetically most stable secondary structure\\nfor the given RNA sequence. This structure might contain a\\npseudoknot of type H (simple canonical recursive pseudoknot) or\\ntype K (simple canonical recursive kissing hairpin), but need not\\nto. Co-optimal results will be suppressed, i.e. should different\\nprediction have the same best energy value, just an arbitrary one\\nout of them will be reported."
    sub_opt: ": Often, the biological relevant structure is hidden among suboptimal\\npredictions. In \\\"subopt mode\\\", you can also inspect all suboptimal\\nsolutions up to a given threshold (see parameters\\n--absoluteDeviation and --relativeDeviation). Due to semantic\\nambiguity of the underlying \\\"microstate\\\" grammar, sometimes\\nidentical predictions will show up. As Vienna-Dot-Bracket strings\\nthey seem to be the same, but according to base dangling they\\ndiffer and thus might even have slightly different energies. See 1]\\nfor details."
    local: ": Computes energetically best and suboptimal local pseudoknots. Local\\nmeans, leading and trailing bases can be omitted and every\\nprediction is a pseudoknot."
    shapes: ": Output of \\\"subopt\\\" mode is crowded by many very similar answers,\\nwhich make it hard to focus to the \\\"important\\\" changes. The\\nabstract shape concept 3] groups similar answers together and\\nreports only the best answer within such a group. Due to\\nabstraction, suboptimal analyses can be done more thorough, by\\nignoring boring differences.\\n(see parameter --shapeLevel)"
    probs: ": Structure probabilities are strictly correlated to their energy\\nvalues. Grouped together into shape classes, their probabilities\\nadd up. Often a shape class with many members of worse energy\\nbecomes more probable than the shape containing the mfe structure\\nbut not much more members. See 4] for details on shape\\nprobabilities."
    cast: ": This mode is the RNAcast approache, see 8].\\nFor a family of RNA sequences, this method independently enumerates\\nthe near-optimal abstract shape space, and predicts as the\\nconsensus an abstract shape common to all sequences. For each\\nsequence, it delivers the thermodynamically best structure which\\nhas this common shape.\\nInput is a multiple fasta file, which should contain at least two\\nsequences.\\nOutput is sorted by \\\"score\\\" of common shapes, i.e. summed free\\nenergy of all sequences. R is the rank (= list position) of the\\nshape in individual sequence analysis."
    eval: ": Evaluates the free energy of an RNA molecule in fixed secondary\\nstructure, similar to RNAeval from the Vienna group. Multiple\\nanswers stem from semantic ambiguity of the underlying grammar.\\nIt might happen, that your given structure is not a structure for\\nthe sequence. Maybe your settings are too restrictive, e.g. not\\nallowing lonely base-pairs (--allowLP), too long hairpin stems for\\npseudoknots (--minHairpinLength) or the given pseudoknot is more\\ncomplex than those of pKiss.\\nIf you input a (multiple) FASTA file, pKiss assumes that exactly\\nfirst half of the contents of each entry is RNA sequence, second\\nhalf is the according structure. Whitespaces are ignored."
    probabilities_dot: "<int> must be a positive integer number."
  }
  output {
    File out_stdout = stdout()
    File out_varna = "${in_varna}"
  }
}