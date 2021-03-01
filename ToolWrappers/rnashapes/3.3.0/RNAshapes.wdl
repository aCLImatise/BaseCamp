version 1.0

task RNAshapes {
  input {
    String? mode
    Float? absolute_deviation
    Float? relative_deviation
    Int? shape_level
    Float? low_prob_filter
    Float? output_low_prob_filter
    Int? num_samples
    Int? show_samples
    Int? window_size
    Int? window_increment
    Int? structure_probs
    Int? grammar
    Float? temperature
    File? param
    Int? allow_lp
    Float? bp_pm_threshold
    File? dotplot
    Int? png
    Directory? bin_path
    Int? bin_prefix
    Int? prob_decimals
    Int? verbose
    File? varna
    Float? slope
    Float? intercept
    File? normalization
    Boolean? reactivity_filename
    File? modifier
    Boolean? options
    String mfe
    String sub_opt
    String shapes
    String probs
    String sample
    String cast
    String eval
    String outside
    String me_a
    String probing
    String probabilities_dot
    String intercept_dot
    String hofacker_dot
  }
  command <<<
    RNAshapes \
      ~{mfe} \
      ~{sub_opt} \
      ~{shapes} \
      ~{probs} \
      ~{sample} \
      ~{cast} \
      ~{eval} \
      ~{outside} \
      ~{me_a} \
      ~{probing} \
      ~{probabilities_dot} \
      ~{intercept_dot} \
      ~{hofacker_dot} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(absolute_deviation) then ("--absoluteDeviation " +  '"' + absolute_deviation + '"') else ""} \
      ~{if defined(relative_deviation) then ("--relativeDeviation " +  '"' + relative_deviation + '"') else ""} \
      ~{if defined(shape_level) then ("--shapeLevel " +  '"' + shape_level + '"') else ""} \
      ~{if defined(low_prob_filter) then ("--lowProbFilter " +  '"' + low_prob_filter + '"') else ""} \
      ~{if defined(output_low_prob_filter) then ("--outputLowProbFilter " +  '"' + output_low_prob_filter + '"') else ""} \
      ~{if defined(num_samples) then ("--numSamples " +  '"' + num_samples + '"') else ""} \
      ~{if defined(show_samples) then ("--showSamples " +  '"' + show_samples + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(window_increment) then ("--windowIncrement " +  '"' + window_increment + '"') else ""} \
      ~{if defined(structure_probs) then ("--structureProbs " +  '"' + structure_probs + '"') else ""} \
      ~{if defined(grammar) then ("--grammar " +  '"' + grammar + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(param) then ("--param " +  '"' + param + '"') else ""} \
      ~{if defined(allow_lp) then ("--allowLP " +  '"' + allow_lp + '"') else ""} \
      ~{if defined(bp_pm_threshold) then ("--bppmThreshold " +  '"' + bp_pm_threshold + '"') else ""} \
      ~{if defined(dotplot) then ("--dotplot " +  '"' + dotplot + '"') else ""} \
      ~{if defined(png) then ("--png " +  '"' + png + '"') else ""} \
      ~{if defined(bin_path) then ("--binPath " +  '"' + bin_path + '"') else ""} \
      ~{if defined(bin_prefix) then ("--binPrefix " +  '"' + bin_prefix + '"') else ""} \
      ~{if defined(prob_decimals) then ("--probDecimals " +  '"' + prob_decimals + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(varna) then ("--varna " +  '"' + varna + '"') else ""} \
      ~{if defined(slope) then ("--slope " +  '"' + slope + '"') else ""} \
      ~{if defined(intercept) then ("--intercept " +  '"' + intercept + '"') else ""} \
      ~{if defined(normalization) then ("--normalization " +  '"' + normalization + '"') else ""} \
      ~{if (reactivity_filename) then "--reactivityfilename" else ""} \
      ~{if defined(modifier) then ("--modifier " +  '"' + modifier + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: ": Select the computation mode. Available modes are \\\"mfe\\\",\\n\\\"subopt\\\", \\\"shapes\\\", \\\"probs\\\", \\\"sample\\\", \\\"cast\\\", \\\"eval\\\",\\n\\\"abstract\\\", \\\"outside\\\", \\\"mea\\\", \\\"probing\\\". Omit the ticks on\\ninput.\\nDefault is \\\"shapes\\\"."
    absolute_deviation: ": This sets the energy range as an absolute value\\nof the minimum free energy. For example, when\\n--absoluteDeviation 10.0 is specified, and the\\nminimum free energy is -10.0 kcal/mol, the\\nenergy range is set to 0.0 to -10.0 kcal/mol.\\n<float> must be a positive floating point\\nnumber.\\nConnot be combined with --relativeDeviation.\\nOnly available in modes: \\\"subopt\\\", \\\"shapes\\\",\\n\\\"cast\\\"."
    relative_deviation: ": This sets the energy range as percentage value\\nof the minimum free energy. For example, when\\n--relativeDeviation 5.0 is specified, and the\\nminimum free energy is -10.0 kcal/mol, the\\nenergy range is set to -9.5 to -10.0 kcal/mol.\\n<float> must be a positive floating point\\nnumber.\\nBy default, --relativeDeviation is set to 10 %.\\nCannot be combined with --absoluteDeviation.\\nOnly available in modes: \\\"subopt\\\", \\\"shapes\\\",\\n\\\"cast\\\"."
    shape_level: ": Set shape abstraction level. Currently, we provide five\\ndifferent levels (see [6] for their definitions), where\\n5 is the most abstract and 1 the most concrete one.\\n<int> must be a number between 5 and 1.\\nDefault is 5 (the most abstract one).\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"shapes\\\",\\n\\\"probs\\\", \\\"sample\\\", \\\"cast\\\", \\\"eval\\\", \\\"abstract\\\", \\\"mea\\\",\\n\\\"probing\\\"."
    low_prob_filter: ": This option sets a barrier for filtering out\\nresults with very low probabilities during\\ncalculation. The default value here is 1e-06, which\\ngives a significant speedup compared to a disabled\\nfilter. (See [7] for details.) Note that this\\nfilter can have a slight influence on the overall\\nresults. To disable this filter, use option\\n--lowProbFilter 0.\\n<float> must be a positive floating point number\\nsmaller than 1.\\nOnly available in mode: \\\"probs\\\"."
    output_low_prob_filter: ": This option sets a filter for omitting low\\nprobability results during output. It is just\\nfor reporting convenience. Unlike probability\\ncutoff filter, this option does not have any\\ninfluence on runtime or probabilities beyond\\nthis value. To disable this filter, use\\noption --outputLowProbFilter 0.\\n<float> must be a positive floating point\\nnumber smaller than 1.\\nOnly available in modes: \\\"probs\\\", \\\"sample\\\"."
    num_samples: ": Sets the number of samples that are drawn to estimate\\nshape probabilities.\\nIn our experience, 1000 iterations are sufficient to\\nachieve reasonable results for shapes with high\\nprobability. Thus, default is 1000.\\nOnly available in mode: \\\"sample\\\"."
    show_samples: ": You can inspect the samples drawn by stochastic\\nbacktrace if you turn --showSamples on by setting it to\\n1.\\nDefault is 0 = off.\\nOnly available in mode: \\\"sample\\\"."
    window_size: ": Activates window mode and computes substrings of size\\n<int> for the input. After computation for the first\\n<int> bases is done, the window is pushed <y> bases to\\nthe right and the next computation is startet. <y> is\\nset by --windowIncrement.\\n<int> must be a non-zero positive integer, smaller than\\nthe input length.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"shapes\\\",\\n\\\"probs\\\", \\\"sample\\\", \\\"mea\\\", \\\"probing\\\"."
    window_increment: ": If --windowSize is given, this parameter sets the\\noffset for the next window to <int> bases.\\n<int> must be a non-zero positive integer, smaller\\nthan --windowSize.\\nDefault is 1.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"shapes\\\",\\n\\\"probs\\\", \\\"sample\\\", \\\"mea\\\", \\\"probing\\\"."
    structure_probs: ": If activated, in addition to free energy also the\\nprobability of structures will be computed. To speed\\nup computation, this calculation is switched off by\\ndefault.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"shapes\\\",\\n\\\"probs\\\", \\\"sample\\\", \\\"cast\\\", \\\"mea\\\", \\\"probing\\\"."
    grammar: ": How to treat \\\"dangling end\\\" energies for bases adjacent\\nto helices in free ends and multi-loops.\\n\\\"nodangle\\\" (-d 0 in Vienna package) ignores dangling\\nenergies altogether.\\n\\\"overdangle\\\" (-d 2 in Vienna package) always dangles\\nbases onto helices, even if they are part of neighboring\\nhelices themselves. Seems to be wrong, but could perform\\nsurprisingly well.\\n\\\"microstate\\\" (-d 1 in Vienna package) correct\\noptimisation of all dangling possibilities,\\nunfortunately this results in an semantically ambiguous\\nsearch space regarding Vienna-Dot-Bracket notations.\\n\\\"macrostate\\\" (no correspondens in Vienna package) same\\nas microstate, while staying unambiguous. Unfortunately,\\nmfe computation violates Bellman's principle of\\noptimality.\\nDefault is \\\"macrostate\\\". See [5] for further details."
    temperature: ": Rescale energy parameters to a temperature of temp C.\\n<float> must be a floating point number.\\nDefault is 37 C.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"shapes\\\",\\n\\\"probs\\\", \\\"sample\\\", \\\"cast\\\", \\\"eval\\\", \\\"outside\\\", \\\"mea\\\",\\n\\\"probing\\\"."
    param: ": Read energy parameters from paramfile, instead of using\\nthe default parameter set. See the RNAlib (Vienna RNA\\npackage) documentation for details on the file format.\\nDefault are parameters released by the Turner group in\\n2004 (see [3] and [4]).\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"shapes\\\",\\n\\\"probs\\\", \\\"sample\\\", \\\"cast\\\", \\\"eval\\\", \\\"outside\\\", \\\"mea\\\",\\n\\\"probing\\\"."
    allow_lp: ": Lonely base pairs have no stabilizing effect, because they\\ncannot stack on another pair, but they heavily increase the\\nsize of the folding space. Thus, we normally forbid them.\\nShould you want to allow them set <int> to 1.\\n<int> must be 0 (=don't allow lonely base pairs) or 1 (=\\nallow them).\\nDefault is 0, i.e. no lonely base pairs."
    bp_pm_threshold: ": Set the threshold for base pair probabilities\\nincluded in the postscript output.\\nDefault is 1e-05.\\nOnly available in mode: \\\"outside\\\"."
    dotplot: ": Sets the filename for the probability dot plot, produced\\nin \\\"outside\\\" mode.\\nDefault is \\\"dotPlot.ps\\\".\\nOnly available in mode: \\\"outside\\\"."
    png: ": Activate this option to also produce a png file of the \\\"dot\\nplot\\\". This is deactivated by default and requires an\\ninstallation of the program \\\"GhostScript\\\".\\nOnly available in mode: \\\"outside\\\"."
    bin_path: ": RNAshapes expects that according Bellman's GAP compiled\\nbinaries are located in the same directory as the Perl\\nwrapper is. Should you moved them into another\\ndirectory, you must set --binPath to this new location!"
    bin_prefix: ": RNAshapes expects a special naming schema for the\\naccording Bellman's GAP compiled binaries. The binary\\nname is composed of three to four components:\\n1) the program prefix (on default \\\"RNAshapes_\\\"),\\n2) the mode,\\n3) the used grammar,\\n4) optionally, the word \\\"window\\\" if you activate\\nwindow computation.\\nThus, for non-window mode \\\"subopt\\\", with grammar\\n\\\"overdangle\\\" and \\\"mis\\\" representation, the name would\\nbe \\\"RNAshapes_subopt_overdangle\\\".\\nWith --binPrefix you can change the prefix into some\\narbitary one."
    prob_decimals: ": Sets the number of digits used for printing shape"
    verbose: ": Prints the actual command for Bellman's GAP binary."
    varna: ": Provide a file name to which a HTML formatted version of\\nthe output should be saved in.\\nOnly available in modes: \\\"mfe\\\", \\\"subopt\\\", \\\"shapes\\\",\\n\\\"probs\\\", \\\"sample\\\", \\\"cast\\\", \\\"eval\\\", \\\"mea\\\", \\\"probing\\\"."
    slope: ": The program RNAstructure [13] adds a bonus to the free\\nenergy of a base-pair stack according to the formula: bonus\\n= slope * log(reactivity + 1) + intercept. If you set\\n--normalization to 'RNAstructure', reactivities are\\nnormalized according to this spirit, but added for all\\nbase-pairs and substracted for all unpaired bases. Default\\nis 1.8.\\nOnly available in mode: \\\"probing\\\"."
    intercept: ": See parameter --slope: sets the value for 'intercept'.\\nOnly effective if --normalization is set to\\n'RNAstructure'. Default is -0.6.\\nOnly available in mode: \\\"probing\\\"."
    normalization: ": The reactivities read from a file (see"
    reactivity_filename: ") can be normalized in four"
    modifier: ": The modifier is the chemical reagent in a structure\\nprobing experiment that attacs the nucleotide which in\\nthe end gives its reactivity. Different modifier affect\\ndifferent bases. Reactivities given by the file\\n--reactivityfilename will be set to zero if the\\nmodifier cannot affect a base. Available modifier are:\\n'DMS' affects [A,C]\\n'CMCT' affects [G,U]\\n'SHAPE' affects [A,C,G,U]\\n'diffSHAPE' affects [A,C,G,U]\\n'unknown' affects [A,C,G,U]\\nDefault is unknown.\\nOnly available in mode: \\\"probing\\\"."
    options: ""
    mfe: ": Computes the single energetically most stable secondary structure\\nfor the given RNA sequence. Co-optimal results will be suppressed,\\ni.e. should different prediction have the same best energy value,\\njust an arbitrary one out of them will be reported.\\nThis resembles the function of the program \\\"RNAfold\\\" of the Vienna\\ngroup (see [1] and [2]). If you only use \\\"mfe\\\" mode, consider\\nswitching to RNAfold, because their implementation is much faster,\\ndue to sophisticated low level C optimisations."
    sub_opt: ": Often, the biological relevant structure is hidden among\\nsuboptimal predictions. In \\\"subopt\\\" mode, you can also inspect all\\nsuboptimal solutions up to a given threshold (see parameters\\n--absoluteDeviation and --relativeDeviation).\\nDuplicates might appear when using grammar \\\"microstate\\\", due to\\nits semantic ambiguity according Vienna-Dot-Bracket strings. See\\n[5] for details."
    shapes: ": Output of \\\"subopt\\\" mode is crowded by many very similar answers,\\nwhich make it hard to focus to the \\\"important\\\" changes. The\\nabstract shape concept [6] groups similar answers together and\\nreports only the best answer within such a group. Due to\\nabstraction, suboptimal analyses can be done more thorough, by\\nignoring boring differences.\\n(see parameter --shapeLevel)"
    probs: ": Structure probabilities are strictly correlated to their energy\\nvalues. Grouped together into shape classes, their probabilities\\nadd up. Often a shape class with many members of worse energy\\nbecomes more probable than the shape containing the mfe structure\\nbut not much more members. See [7] for details on shape\\nprobabilities."
    sample: ": Probabilistic sampling based on partition function. This mode\\ncombines stochastic sampling with a-posteriori shape abstraction.\\nA sample from the structure space holds M structures together with\\ntheir shapes, on which classification is performed. The\\nprobability of a shape can then be approximated by its frequency\\nin the sample."
    cast: ": This mode is the RNAcast approache, see [8].\\nFor a family of RNA sequences, this method independently\\nenumerates the near-optimal abstract shape space, and predicts as\\nthe consensus an abstract shape common to all sequences. For each\\nsequence, it delivers the thermodynamically best structure which\\nhas this common shape.\\nInput is a multiple fasta file, which should contain at least two\\nsequences.\\nOutput is sorted by \\\"score\\\" of common shapes, i.e. summed free\\nenergy of all sequences. R is the rank (= list position) of the\\nshape in individual sequence analysis."
    eval: ": Evaluates the free energy of an RNA molecule in fixed secondary\\nstructure, similar to RNAeval from the Vienna group. Multiple\\nanswers stem from semantic ambiguity of the underlying grammar.\\nIt might happen, that your given structure is not a structure for\\nthe sequence. Maybe your settings are too restrictive, e.g. not\\nallowing lonely base-pairs (--allowLP).\\nIf you input a (multiple) FASTA file, RNAshapes assumes that\\nexactly first half of the contents of each entry is RNA sequence,\\nsecond half is the according structure. Whitespaces are ignored."
    outside: ": Applies the \\\"outside\\\"-algorithm to compute probabilities for all\\nbase pairs (i,j), based on the partition function [10]. Output is\\na PostScript file, visualizing these probabilities as a \\\"dot\\nplot\\\".\\nThe \\\"dot plot\\\" shows a matrix of squares with area proportional to\\nthe base pair probabilities in the upper right half. For each pair\\n(i,j) with probability above --bppmThreshold there is a line of\\nthe form\\ni j sqrt(p) ubox\\nin the PostScript file, so that they can be easily extracted."
    me_a: ": Finds the secondary structure with the maximal sum of base-pair\\nprobabilities (MEA=maximal expected accuracy). The equivalent\\nVienna Package name is the 'centroid secondary structure', defined\\nas 'The centroid structure is the structure with the minimum total\\nbase-pair distance to all structures in the thermodynamic\\nensemble.'."
    probing: ": Structural probing is a wet-lab method to obtain hints about the\\nlikelihood of a nucleotide in a structure to be unpaired, a so\\ncalled 'reactivity' [12]. We use the reactivities to enrich the\\nthermodynamic model. To circumvent the challenge of properly\\nweighting free energies and reactivities, as in e.g. RNAstructure\\n[13], we compute a pareto front of both optimization criteria\\n[14]'. This returns a set of equally good candidates, which\\nrepresent interesting spots of the structural ensemble. Finally,\\nthe user has to pick his/her favorite."
    probabilities_dot: "<int> must be a positive integer number."
    intercept_dot: "Default is centroid."
    hofacker_dot: "\\\"The Vienna RNA Websuite.\\\""
  }
  output {
    File out_stdout = stdout()
    File out_varna = "${in_varna}"
  }
}