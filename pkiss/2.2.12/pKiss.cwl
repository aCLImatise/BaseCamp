class: CommandLineTool
id: pKiss.cwl
inputs:
- id: mode
  doc: ': Select the computation mode. Available modes are "mfe", "subopt", "enforce",
    "local", "shapes", "probs", "cast", "eval", "abstract". Omit the ticks on input.
    Default is "subopt".'
  type: string
  inputBinding:
    prefix: --mode
- id: absolute_deviation
  doc: ': This sets the energy range as an absolute value of the minimum free energy.
    For example, when --absoluteDeviation 10.0 is specified, and the minimum free
    energy is -10.0 kcal/mol, the energy range is set to 0.0 to -10.0 kcal/mol. <float>
    must be a positive floating point number. Connot be combined with --relativeDeviation.
    Only available in modes: "subopt", "local", "shapes", "cast".'
  type: double
  inputBinding:
    prefix: --absoluteDeviation
- id: relative_deviation
  doc: ': This sets the energy range as percentage value of the minimum free energy.
    For example, when --relativeDeviation 5.0 is specified, and the minimum free energy
    is -10.0 kcal/mol, the energy range is set to -9.5 to -10.0 kcal/mol. <float>
    must be a positive floating point number. By default, --relativeDeviation is set
    to 10 %. Cannot be combined with --absoluteDeviation. Only available in modes:
    "subopt", "local", "shapes", "cast".'
  type: double
  inputBinding:
    prefix: --relativeDeviation
- id: shape_level
  doc: ': Set shape abstraction level. Currently, we provide five different levels
    (see 1] for their definitions), where 5 is the most abstract and 1 the most concrete
    one. <int> must be a number between 5 and 1. Default is 5 (the most abstract one).
    Only available in modes: "shapes", "probs", "cast", "eval", "abstract".'
  type: long
  inputBinding:
    prefix: --shapeLevel
- id: low_prob_filter
  doc: ': This option sets a barrier for filtering out results with very low probabilities
    during calculation. The default value here is 1e-06, which gives a significant
    speedup compared to a disabled filter. (See 4] for details.) Note that this filter
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
    floating point number smaller than 1. Only available in mode: "probs".'
  type: double
  inputBinding:
    prefix: --outputLowProbFilter
- id: window_size
  doc: ': Activates window mode and computes substrings of size <int> for the input.
    After computation for the first <int> bases is done, the window is pushed <y>
    bases to the right and the next computation is startet. <y> is set by --windowIncrement.
    <int> must be a non-zero positive integer, smaller than the input length. Only
    available in modes: "mfe", "subopt", "enforce", "local", "shapes", "probs".'
  type: long
  inputBinding:
    prefix: --windowSize
- id: window_increment
  doc: ': If --windowSize is given, this parameter sets the offset for the next window
    to <int> bases. <int> must be a non-zero positive integer, smaller than --windowSize.
    Default is 1. Only available in modes: "mfe", "subopt", "enforce", "local", "shapes",
    "probs".'
  type: long
  inputBinding:
    prefix: --windowIncrement
- id: strategy
  doc: ": Select pseudoknot strategy. There are four different strategies how to compute\
    \ kissing hairpins (K-type pseudoknots). We suggest 'A', see [8] for details.\
    \ If you choose 'P' only H-type pseudoknots can be computed. Available strategies\
    \ are 'A','B','C','D' and 'P'. On input omit the ticks. Default is 'A'. Only available\
    \ in modes: \"mfe\", \"subopt\", \"enforce\", \"local\", \"shapes\", \"probs\"\
    , \"cast\"."
  type: string
  inputBinding:
    prefix: --strategy
- id: min_hairpin_length
  doc: ': Set minimal hairpin length for K-type pseudoknots. The first heuristic step
    in computung kissing hairpins, is to find stable, non-interrupted helices. These
    helices must have a minimal length, i.e. number of stacked base-pairs, of <int>.
    The higher the value, the faster the program, but also the less accurate. This
    affects only the stems of both hairpins, not their kissing helix! <int> must be
    a positive number. Default is 2.'
  type: long
  inputBinding:
    prefix: --minHairpinLength
- id: max_knot_size
  doc: ": Set a maximal pseudoknot size. To speed up computation, you can limit the\
    \ number of bases involved in a pseudoknot (and all it's loop regions) by giving\
    \ <int>. Only positive numbers are allowed for <int> By default, there is no limitation,\
    \ i.e. --maxKnotSize is set to input length. Only available in modes: \"mfe\"\
    , \"subopt\", \"enforce\", \"local\", \"shapes\", \"probs\", \"cast\"."
  type: long
  inputBinding:
    prefix: --maxKnotSize
- id: h_penalty
  doc: ': Set init. energy penalty for an H-type pseudoknot. Thermodynamic energy
    parameters for pseudoknots have not been measured in a wet lab, yet. Thus, you
    might want to set the penalty for opening a H-type pseudoknot yourself. <float>
    must be a floating point number. Default is 9 kcal/mol. Only available in modes:
    "mfe", "subopt", "enforce", "local", "shapes", "probs", "cast", "eval".'
  type: double
  inputBinding:
    prefix: --Hpenalty
- id: k_penalty
  doc: ': Set init. energy penalty for an K-type pseudoknot. Thermodynamic energy
    parameters for pseudoknots have not been measured in a wet lab, yet. Thus, you
    might want to set the penalty for opening a K-type pseudoknot yourself. <float>
    must be a floating point number. Default is 12 kcal/mol. Only available in modes:
    "mfe", "subopt", "enforce", "local", "shapes", "probs", "cast", "eval".'
  type: double
  inputBinding:
    prefix: --Kpenalty
- id: allow_lp
  doc: ": Lonely base pairs have no stabilizing effect, because they cannot stack\
    \ on another pair, but they heavily increase the size of the folding space. Thus,\
    \ we normally forbid them. Should you want to allow them set <int> to 1. <int>\
    \ must be 0 (=don't allow lonely base pairs) or 1 (= allow them). Default is 0,\
    \ i.e. no lonely base pairs."
  type: long
  inputBinding:
    prefix: --allowLP
- id: temperature
  doc: ': Rescale energy parameters to a temperature of temp C. <float> must be a
    floating point number. Default is 37 C. Only available in modes: "mfe", "subopt",
    "enforce", "local", "shapes", "probs", "cast", "eval".'
  type: double
  inputBinding:
    prefix: --temperature
- id: param
  doc: ': Read energy parameters from paramfile, instead of using the default parameter
    set. See the RNAlib (Vienna RNA package) documentation for details on the file
    format. Default are parameters released by the Turner group in 2004 (see [5] and
    [6]). Only available in modes: "mfe", "subopt", "enforce", "local", "shapes",
    "probs", "cast", "eval".'
  type: string
  inputBinding:
    prefix: --param
- id: bin_path
  doc: ": pKiss expects that according Bellman's GAP compiled binaries are located\
    \ in the same directory as the Perl wrapper is. Should you moved them into another\
    \ directory, you must set --binPath to this new location!"
  type: string
  inputBinding:
    prefix: --binPath
- id: bin_prefix
  doc: ": pKiss expects a special naming schema for the according Bellman's GAP compiled\
    \ binaries. On default, each binary is named \"pKiss_\", followed by the mode,\
    \ followed by \"_window\" for the window mode version. Thus, for non-window mode\
    \ \"subopt\" the name would be \"pKiss_subopt\". With --binPrefix you can change\
    \ the prefix into some arbitary one."
  type: string
  inputBinding:
    prefix: --binPrefix
- id: prob_decimals
  doc: ': Sets the number of digits used for printing shape probabilities. <int> must
    be a positive integer number. Default is 7. Only available in mode: "probs".'
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
    be saved in. Only available in modes: "mfe", "subopt", "enforce", "local", "shapes",
    "probs", "cast", "eval".'
  type: string
  inputBinding:
    prefix: --varna
outputs: []
cwlVersion: v1.1
baseCommand:
- pKiss
