class: CommandLineTool
id: RNAshapes.cwl
inputs:
- id: outside
  doc: ': Applies the "outside"-algorithm to compute probabilities for all base pairs
    (i,j), based on the partition function [10]. Output is a PostScript file, visualizing
    these probabilities as a "dot plot". The "dot plot" shows a matrix of squares
    with area proportional to the base pair probabilities in the upper right half.
    For each pair (i,j) with probability above --bppmThreshold there is a line of
    the form i j sqrt(p) ubox in the PostScript file, so that they can be easily extracted.'
  type: string
  inputBinding:
    position: 0
- id: me_a
  doc: ": Finds the secondary structure with the maximal sum of base-pair probabilities\
    \ (MEA=maximal expected accuracy). The equivalent Vienna Package name is the 'centroid\
    \ secondary structure', defined as 'The centroid structure is the structure with\
    \ the minimum total base-pair distance to all structures in the thermodynamic\
    \ ensemble.'."
  type: string
  inputBinding:
    position: 1
- id: probing
  doc: ": Structural probing is a wet-lab method to obtain hints about the likelihood\
    \ of a nucleotide in a structure to be unpaired, a so called 'reactivity' [12].\
    \ We use the reactivities to enrich the thermodynamic model. To circumvent the\
    \ challenge of properly weighting free energies and reactivities, as in e.g. RNAstructure\
    \ [13], we compute a pareto front of both optimization criteria [14]'. This returns\
    \ a set of equally good candidates, which represent interesting spots of the structural\
    \ ensemble. Finally, the user has to pick his/her favorite."
  type: string
  inputBinding:
    position: 2
- id: mode
  doc: ': Select the computation mode. Available modes are "mfe", "subopt", "shapes",
    "probs", "sample", "cast", "eval", "abstract", "outside", "mea", "probing". Omit
    the ticks on input. Default is "shapes".'
  type: string
  inputBinding:
    prefix: --mode
- id: absolute_deviation
  doc: ': This sets the energy range as an absolute value of the minimum free energy.
    For example, when --absoluteDeviation 10.0 is specified, and the minimum free
    energy is -10.0 kcal/mol, the energy range is set to 0.0 to -10.0 kcal/mol. <float>
    must be a positive floating point number. Connot be combined with --relativeDeviation.
    Only available in modes: "subopt", "shapes", "cast".'
  type: double
  inputBinding:
    prefix: --absoluteDeviation
- id: relative_deviation
  doc: ': This sets the energy range as percentage value of the minimum free energy.
    For example, when --relativeDeviation 5.0 is specified, and the minimum free energy
    is -10.0 kcal/mol, the energy range is set to -9.5 to -10.0 kcal/mol. <float>
    must be a positive floating point number. By default, --relativeDeviation is set
    to 10 %. Cannot be combined with --absoluteDeviation. Only available in modes:
    "subopt", "shapes", "cast".'
  type: double
  inputBinding:
    prefix: --relativeDeviation
- id: shape_level
  doc: ': Set shape abstraction level. Currently, we provide five different levels
    (see [6] for their definitions), where 5 is the most abstract and 1 the most concrete
    one. <int> must be a number between 5 and 1. Default is 5 (the most abstract one).
    Only available in modes: "mfe", "subopt", "shapes", "probs", "sample", "cast",
    "eval", "abstract", "mea", "probing".'
  type: long
  inputBinding:
    prefix: --shapeLevel
- id: low_prob_filter
  doc: ': This option sets a barrier for filtering out results with very low probabilities
    during calculation. The default value here is 1e-06, which gives a significant
    speedup compared to a disabled filter. (See [7] for details.) Note that this filter
    can have a slight influence on the overall results. To disable this filter, use
    option --lowProbFilter 0. <float> must be a positive floating point number smaller
    than 1. Only available in mode: "probs".'
  type: double
  inputBinding:
    prefix: --lowProbFilter
- id: output_low_prob_filter
  doc: ': This option sets a filter for omitting low probability results during output.
    It is just for reporting convenience. Unlike probability cutoff filter, this option
    does not have any influence on runtime or probabilities beyond this value. To
    disable this filter, use option --outputLowProbFilter 0. <float> must be a positive
    floating point number smaller than 1. Only available in modes: "probs", "sample".'
  type: double
  inputBinding:
    prefix: --outputLowProbFilter
- id: num_samples
  doc: ': Sets the number of samples that are drawn to estimate shape probabilities.
    In our experience, 1000 iterations are sufficient to achieve reasonable results
    for shapes with high probability. Thus, default is 1000. Only available in mode:
    "sample".'
  type: long
  inputBinding:
    prefix: --numSamples
- id: show_samples
  doc: ': You can inspect the samples drawn by stochastic backtrace if you turn --showSamples
    on by setting it to 1. Default is 0 = off. Only available in mode: "sample".'
  type: long
  inputBinding:
    prefix: --showSamples
- id: window_size
  doc: ': Activates window mode and computes substrings of size <int> for the input.
    After computation for the first <int> bases is done, the window is pushed <y>
    bases to the right and the next computation is startet. <y> is set by --windowIncrement.
    <int> must be a non-zero positive integer, smaller than the input length. Only
    available in modes: "mfe", "subopt", "shapes", "probs", "sample", "mea", "probing".'
  type: long
  inputBinding:
    prefix: --windowSize
- id: window_increment
  doc: ': If --windowSize is given, this parameter sets the offset for the next window
    to <int> bases. <int> must be a non-zero positive integer, smaller than --windowSize.
    Default is 1. Only available in modes: "mfe", "subopt", "shapes", "probs", "sample",
    "mea", "probing".'
  type: long
  inputBinding:
    prefix: --windowIncrement
- id: structure_probs
  doc: ': If activated, in addition to free energy also the probability of structures
    will be computed. To speed up computation, this calculation is switched off by
    default. Only available in modes: "mfe", "subopt", "shapes", "probs", "sample",
    "cast", "mea", "probing".'
  type: long
  inputBinding:
    prefix: --structureProbs
- id: grammar
  doc: ": How to treat \"dangling end\" energies for bases adjacent to helices in\
    \ free ends and multi-loops. \"nodangle\" (-d 0 in Vienna package) ignores dangling\
    \ energies altogether. \"overdangle\" (-d 2 in Vienna package) always dangles\
    \ bases onto helices, even if they are part of neighboring helices themselves.\
    \ Seems to be wrong, but could perform surprisingly well. \"microstate\" (-d 1\
    \ in Vienna package) correct optimisation of all dangling possibilities, unfortunately\
    \ this results in an semantically ambiguous search space regarding Vienna-Dot-Bracket\
    \ notations. \"macrostate\" (no correspondens in Vienna package) same as microstate,\
    \ while staying unambiguous. Unfortunately, mfe computation violates Bellman's\
    \ principle of optimality. Default is \"macrostate\". See [5] for further details."
  type: string
  inputBinding:
    prefix: --grammar
- id: temperature
  doc: ': Rescale energy parameters to a temperature of temp C. <float> must be a
    floating point number. Default is 37 C. Only available in modes: "mfe", "subopt",
    "shapes", "probs", "sample", "cast", "eval", "outside", "mea", "probing".'
  type: double
  inputBinding:
    prefix: --temperature
- id: param
  doc: ': Read energy parameters from paramfile, instead of using the default parameter
    set. See the RNAlib (Vienna RNA package) documentation for details on the file
    format. Default are parameters released by the Turner group in 2004 (see [3] and
    [4]). Only available in modes: "mfe", "subopt", "shapes", "probs", "sample", "cast",
    "eval", "outside", "mea", "probing".'
  type: string
  inputBinding:
    prefix: --param
- id: allow_lp
  doc: ": Lonely base pairs have no stabilizing effect, because they cannot stack\
    \ on another pair, but they heavily increase the size of the folding space. Thus,\
    \ we normally forbid them. Should you want to allow them set <int> to 1. <int>\
    \ must be 0 (=don't allow lonely base pairs) or 1 (= allow them). Default is 0,\
    \ i.e. no lonely base pairs."
  type: long
  inputBinding:
    prefix: --allowLP
- id: bp_pm_threshold
  doc: ': Set the threshold for base pair probabilities included in the postscript
    output. Default is 1e-05. Only available in mode: "outside".'
  type: double
  inputBinding:
    prefix: --bppmThreshold
- id: dotplot
  doc: ': Sets the filename for the probability dot plot, produced in "outside" mode.
    Default is "dotPlot.ps". Only available in mode: "outside".'
  type: string
  inputBinding:
    prefix: --dotplot
- id: png
  doc: ': Activate this option to also produce a png file of the "dot plot". This
    is deactivated by default and requires an installation of the program "GhostScript".
    Only available in mode: "outside".'
  type: long
  inputBinding:
    prefix: --png
- id: bin_path
  doc: ": RNAshapes expects that according Bellman's GAP compiled binaries are located\
    \ in the same directory as the Perl wrapper is. Should you moved them into another\
    \ directory, you must set --binPath to this new location!"
  type: string
  inputBinding:
    prefix: --binPath
- id: bin_prefix
  doc: ": RNAshapes expects a special naming schema for the according Bellman's GAP\
    \ compiled binaries. The binary name is composed of three to four components:\
    \ 1) the program prefix (on default \"RNAshapes_\"), 2) the mode, 3) the used\
    \ grammar, 4) optionally, the word \"window\" if you activate window computation.\
    \ Thus, for non-window mode \"subopt\", with grammar \"overdangle\" and \"mis\"\
    \ representation, the name would be \"RNAshapes_subopt_overdangle\". With --binPrefix\
    \ you can change the prefix into some arbitary one."
  type: string
  inputBinding:
    prefix: --binPrefix
- id: prob_decimals
  doc: ": Sets the number of digits used for printing shape probabilities. <int> must\
    \ be a positive integer number. Default is 7. Also sets the number of displayed\
    \ decimals for reactivity values if mode 'probing' is used. Only available in\
    \ modes: \"probs\", \"sample\", \"mea\", \"probing\"."
  type: long
  inputBinding:
    prefix: --probDecimals
- id: verbose
  doc: ": Prints the actual command for Bellman's GAP binary."
  type: long
  inputBinding:
    prefix: --verbose
- id: varna
  doc: ': Provide a file name to which a HTML formatted version of the output should
    be saved in. Only available in modes: "mfe", "subopt", "shapes", "probs", "sample",
    "cast", "eval", "mea", "probing".'
  type: string
  inputBinding:
    prefix: --varna
- id: slope
  doc: ": The program RNAstructure [13] adds a bonus to the free energy of a base-pair\
    \ stack according to the formula: bonus = slope * log(reactivity + 1) + intercept.\
    \ If you set --normalization to 'RNAstructure', reactivities are normalized according\
    \ to this spirit, but added for all base-pairs and substracted for all unpaired\
    \ bases. Default is 1.8. Only available in mode: \"probing\"."
  type: double
  inputBinding:
    prefix: --slope
- id: intercept
  doc: ": See parameter --slope: sets the value for 'intercept'. Only effective if\
    \ --normalization is set to 'RNAstructure'. Default is -0.6. Only available in\
    \ mode: \"probing\"."
  type: double
  inputBinding:
    prefix: --intercept
- id: normalization
  doc: ": The reactivities read from a file (see --reactivityfilename) can be normalized\
    \ in four ways. Non zero values are always set to be 0.0: 'centroid': a 2-means\
    \ clustering of all raw reactivities gives a centroid value for 'paired' and another\
    \ for 'unpaired' values. The difference to the respective centroid, given by the\
    \ structure, is added to the score. 'asProbabilities': All reactivities are converted\
    \ into probabilities ranging from 0.0 to 1.0. 'logplain': reactivities are transformed\
    \ via the formula: log(reactivity + 1.0). 'RNAstructure': reactivities are normalized\
    \ as in the program RNAstructure, i.e. basically by the formula: slope * log(reactivity\
    \ + 1.0) + intercept. Default is centroid. Only available in mode: \"probing\"\
    ."
  type: string
  inputBinding:
    prefix: --normalization
- id: modifier
  doc: ": The modifier is the chemical reagent in a structure probing experiment that\
    \ attacs the nucleotide which in the end gives its reactivity. Different modifier\
    \ affect different bases. Reactivities given by the file --reactivityfilename\
    \ will be set to zero if the modifier cannot affect a base. Available modifier\
    \ are: 'DMS' affects [A,C] 'CMCT' affects [G,U] 'SHAPE' affects [A,C,G,U] 'diffSHAPE'\
    \ affects [A,C,G,U] 'unknown' affects [A,C,G,U] Default is unknown. Only available\
    \ in mode: \"probing\"."
  type: string
  inputBinding:
    prefix: --modifier
- id: reactivity_filename
  doc: ': The path to a file containing the raw reactivity values. The file must contain
    two tabular separated columns. First column is the index of the nucleotide, starting
    with 1. The second column is a float value giving the reactivity for that nucleotide.
    There must be as many rows as nucleotides in the input RNA sequence! Only available
    in mode: "probing".'
  type: string
  inputBinding:
    prefix: --reactivityfilename
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAshapes
