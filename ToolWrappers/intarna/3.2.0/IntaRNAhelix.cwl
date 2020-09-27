class: CommandLineTool
id: IntaRNAhelix.cwl
inputs:
- id: in_q
  doc: "[ --query ] arg            either an RNA sequence or the stream/file name\n\
    from where to read the query sequences (should\nbe the shorter sequences to increase\n\
    efficiency); use 'STDIN' to read from standard\ninput stream; sequences have to\
    \ use IUPAC\nnucleotide encoding; output alias is [seq2]"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_t
  doc: "[ --target ] arg           either an RNA sequence or the stream/file name\n\
    from where to read the target sequences (should\nbe the longer sequences to increase\n\
    efficiency); use 'STDIN' to read from standard\ninput stream; sequences have to\
    \ use IUPAC\nnucleotide encoding; output alias is [seq1]"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_helix_min_bp
  doc: "(=2)         minimal number of base pairs inside a helix\n(arg in range [2,4])"
  type: long
  inputBinding:
    prefix: --helixMinBP
- id: in_helix_max_bp
  doc: "(=10)        maximal number of base pairs inside a helix\n(arg in range [2,20])"
  type: long
  inputBinding:
    prefix: --helixMaxBP
- id: in_helix_max_il
  doc: "(=0)         maximal size for each internal loop size in a\nhelix (arg in\
    \ range [0,2])."
  type: long
  inputBinding:
    prefix: --helixMaxIL
- id: in_helix_min_pu
  doc: "(=0)         minimal unpaired probability (per sequence) of\nconsidered helices\
    \ (arg in range [0,1])."
  type: long
  inputBinding:
    prefix: --helixMinPu
- id: in_helix_max_e
  doc: "(=0)          maximal energy (excluding) a helix may have\n(arg in range [-999,999])."
  type: long
  inputBinding:
    prefix: --helixMaxE
- id: in_helix_full_e
  doc: "[=arg(=1)] (=0)  if given (or true), the overall energy of a\nhelix (including\
    \ E_init, ED, dangling ends, ..)\nwill be used for helixMaxE checks; otherwise\n\
    only loop-terms are considered."
  type: boolean
  inputBinding:
    prefix: --helixFullE
- id: in_no_seed
  doc: "[=arg(=1)] (=0)      if given (or true), no seed is enforced within\nthe predicted\
    \ interactions"
  type: boolean
  inputBinding:
    prefix: --noSeed
- id: in_seed_tq
  doc: "comma separated list of explicit seed base pair\nencoding(s) in the format\n\
    startTbpsT&startQbpsQ, e.g. '3|||.|&7||.||',\nwhere 'startT/Q' are the indices\
    \ of the 5' seed\nends in target/query sequence and 'bpsT/Q' the\nrespective dot-bar\
    \ base pair encodings. This\ndisables all other seed constraints and seed\nidentification."
  type: long
  inputBinding:
    prefix: --seedTQ
- id: in_seed_bp
  doc: "(=7)             number of inter-molecular base pairs within the\nseed region\
    \ (arg in range [2,20])"
  type: long
  inputBinding:
    prefix: --seedBP
- id: in_arg_h_prediction
  doc: "[ --mode ] arg (=H)        prediction mode :\n'H' = heuristic (fast and low\
    \ memory),\n'M' = exact (slow),\n'S' = seed-only"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_model
  doc: "(=B)              interaction model :\n'S' = single-site, minimum-free-energy\n\
    interaction (interior loops only),\n'X' = single-site, minimum-free-energy\ninteraction\
    \ via seed-extension (interior loops\nonly),\n'B' = single-site, helix-block-based,\n\
    minimum-free-energy interaction (blocks of\nstable helices and interior loops\
    \ only),\n'P' = single-site interaction with minimal\nfree ensemble energy per\
    \ site (interior loops\nonly)"
  type: string
  inputBinding:
    prefix: --model
- id: in_acc
  doc: "(=C)                accessibility computation :\n'N' no accessibility contributions\n\
    'C' computation of accessibilities (see --accW\nand --accL)"
  type: string
  inputBinding:
    prefix: --acc
- id: in_int_len_max
  doc: "(=0)          interaction site : maximal window size to be\nconsidered for\
    \ interaction (arg in range\n[0,99999]; 0 refers to the full sequence\nlength).\
    \ If --accW is provided, the smaller\nwindow size of both is used."
  type: long
  inputBinding:
    prefix: --intLenMax
- id: in_int_loop_max
  doc: "(=10)        interaction site : maximal number of unpaired\nbases between\
    \ neighbored interacting bases to\nbe considered in interactions (arg in range\n\
    [0,30]; 0 enforces stackings only)"
  type: long
  inputBinding:
    prefix: --intLoopMax
- id: in_out
  doc: "(=STDOUT)           output (multi-arg) : provide a file name for\noutput (will\
    \ be overwritten) or 'STDOUT/STDERR'\nto write to the according stream (according\
    \ to\n--outMode).\nUse one of the following PREFIXES\n(colon-separated) to generate\
    \ ADDITIONAL\noutput:\n'qMinE:' (query) for each position the minimal\nenergy\
    \ of any interaction covering the position\n(CSV format)\n'qSpotProb:' (query)\
    \ for each position the\nprobability that is is covered by an\ninteraction covering\
    \ (CSV format)\n'qAcc:' (query) ED accessibility values\n('qPu'-like format).\n\
    'qPu:' (query) unpaired probabilities values\n(RNAplfold format).\n'tMinE:' (target)\
    \ for each position the\nminimal energy of any interaction covering the\nposition\
    \ (CSV format)\n'tSpotProb:' (target) for each position the\nprobability that\
    \ is is covered by an\ninteraction covering (CSV format)\n'tAcc:' (target) ED\
    \ accessibility values\n('tPu'-like format).\n'tPu:' (target) unpaired probabilities\
    \ values\n(RNAplfold format).\n'pMinE:' (target+query) for each index pair\nthe\
    \ minimal energy of any interaction covering\nthe pair (CSV format)\n'spotProb:'\
    \ (target+query) tracks for a given\nset of interaction spots their probability\
    \ to\nbe covered by an interaction. If no spots are\nprovided, probabilities for\
    \ all index\ncombinations are computed. Spots are encoded by\ncomma-separated\
    \ 'idxT&idxQ' pairs\n(target-query). For each spot a probability is\nprovided\
    \ in concert with the probability that\nnone of the spots (encoded by '0&0') is\
    \ covered\n(CSV format). The spot encoding is followed\ncolon-separated by the\
    \ output stream/file name,\neg. '--out=\"spotProb:3&76,59&2:STDERR\"'. NOTE:\n\
    value has to be quoted due to '&' symbol!\nFor each, provide a file name or STDOUT/STDERR\n\
    to write to the respective output stream."
  type: File
  inputBinding:
    prefix: --out
- id: in_out_sep
  doc: (=;)             column separator to be used in tabular CSV
  type: string
  inputBinding:
    prefix: --outSep
- id: in_arg_number_suboptimal
  doc: "[ --outNumber ] arg (=1)   number of (sub)optimal interactions to report\n\
    (arg in range [0,1000])"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_out_overlap
  doc: "(=B)         suboptimal output : interactions can overlap\n'N' in none of\
    \ the sequences,\n'T' in the target only,\n'Q' in the query only,\n'B' in both\
    \ sequences"
  type: string
  inputBinding:
    prefix: --outOverlap
- id: in_threads
  doc: "(=1)            maximal number of threads to be used for\nparallel computation\
    \ of query-target\ncombinations. A value of 0 requests all\navailable CPUs. Note,\
    \ the number of threads\nmultiplies the required memory used for\ncomputation!\
    \ (arg in range [0,8])"
  type: long
  inputBinding:
    prefix: --threads
- id: in_personality
  doc: "IntaRNA personality to be used, which defines\ndefault values, available program\
    \ arguments and\ntool behavior"
  type: string
  inputBinding:
    prefix: --personality
- id: in_parameter_file
  doc: file from where to read additional command line
  type: File
  inputBinding:
    prefix: --parameterFile
- id: in_full_help
  doc: show the extended help page for all available
  type: boolean
  inputBinding:
    prefix: --fullhelp
- id: in_output
  doc: "--outMode arg (=N)            output mode :\n'N' normal output (ASCII char\
    \ + energy),\n'D' detailed output (ASCII char +"
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: -h [ --help ]                 show the help page for basic parameters
  type: string
  inputBinding:
    position: 0
- id: in_parameters
  doc: Run --fullhelp for the extended list of parameters
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "(=STDOUT)           output (multi-arg) : provide a file name for\noutput (will\
    \ be overwritten) or 'STDOUT/STDERR'\nto write to the according stream (according\
    \ to\n--outMode).\nUse one of the following PREFIXES\n(colon-separated) to generate\
    \ ADDITIONAL\noutput:\n'qMinE:' (query) for each position the minimal\nenergy\
    \ of any interaction covering the position\n(CSV format)\n'qSpotProb:' (query)\
    \ for each position the\nprobability that is is covered by an\ninteraction covering\
    \ (CSV format)\n'qAcc:' (query) ED accessibility values\n('qPu'-like format).\n\
    'qPu:' (query) unpaired probabilities values\n(RNAplfold format).\n'tMinE:' (target)\
    \ for each position the\nminimal energy of any interaction covering the\nposition\
    \ (CSV format)\n'tSpotProb:' (target) for each position the\nprobability that\
    \ is is covered by an\ninteraction covering (CSV format)\n'tAcc:' (target) ED\
    \ accessibility values\n('tPu'-like format).\n'tPu:' (target) unpaired probabilities\
    \ values\n(RNAplfold format).\n'pMinE:' (target+query) for each index pair\nthe\
    \ minimal energy of any interaction covering\nthe pair (CSV format)\n'spotProb:'\
    \ (target+query) tracks for a given\nset of interaction spots their probability\
    \ to\nbe covered by an interaction. If no spots are\nprovided, probabilities for\
    \ all index\ncombinations are computed. Spots are encoded by\ncomma-separated\
    \ 'idxT&idxQ' pairs\n(target-query). For each spot a probability is\nprovided\
    \ in concert with the probability that\nnone of the spots (encoded by '0&0') is\
    \ covered\n(CSV format). The spot encoding is followed\ncolon-separated by the\
    \ output stream/file name,\neg. '--out=\"spotProb:3&76,59&2:STDERR\"'. NOTE:\n\
    value has to be quoted due to '&' symbol!\nFor each, provide a file name or STDOUT/STDERR\n\
    to write to the respective output stream."
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- IntaRNAhelix
