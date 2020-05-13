class: CommandLineTool
id: IntaRNAhelix.cwl
inputs:
- id: q
  doc: "[ --query ] arg            either an RNA sequence or the stream/file name\
    \  from where to read the query sequences (should  be the shorter sequences to\
    \ increase  efficiency); use 'STDIN' to read from standard  input stream; sequences\
    \ have to use IUPAC  nucleotide encoding; output alias is [seq2]"
  type: boolean
  inputBinding:
    prefix: -q
- id: t
  doc: "[ --target ] arg           either an RNA sequence or the stream/file name\
    \  from where to read the target sequences (should be the longer sequences to\
    \ increase  efficiency); use 'STDIN' to read from standard  input stream; sequences\
    \ have to use IUPAC  nucleotide encoding; output alias is [seq1]"
  type: boolean
  inputBinding:
    prefix: -t
- id: helix_min_bp
  doc: (=2)         minimal number of base pairs inside a helix  (arg in range [2,4])
  type: string
  inputBinding:
    prefix: --helixMinBP
- id: helix_max_bp
  doc: (=10)        maximal number of base pairs inside a helix  (arg in range [2,20])
  type: string
  inputBinding:
    prefix: --helixMaxBP
- id: helix_max_il
  doc: (=0)         maximal size for each internal loop size in a  helix (arg in range
    [0,2]).
  type: string
  inputBinding:
    prefix: --helixMaxIL
- id: helix_min_pu
  doc: (=0)         minimal unpaired probability (per sequence) of  considered helices
    (arg in range [0,1]).
  type: string
  inputBinding:
    prefix: --helixMinPu
- id: helix_max_e
  doc: (=0)          maximal energy (excluding) a helix may have  (arg in range [-999,999]).
  type: string
  inputBinding:
    prefix: --helixMaxE
- id: helix_full_e
  doc: '[=arg(=1)] (=0)  if given (or true), the overall energy of a  helix (including
    E_init, ED, dangling ends, ..) will be used for helixMaxE checks; otherwise  only
    loop-terms are considered.'
  type: boolean
  inputBinding:
    prefix: --helixFullE
- id: no_seed
  doc: '[=arg(=1)] (=0)      if given (or true), no seed is enforced within  the predicted
    interactions'
  type: boolean
  inputBinding:
    prefix: --noSeed
- id: seed_tq
  doc: comma separated list of explicit seed base pair encoding(s) in the format  startTbpsT&startQbpsQ,
    e.g. '3|||.|&7||.||',  where 'startT/Q' are the indices of the 5' seed ends in
    target/query sequence and 'bpsT/Q' the  respective dot-bar base pair encodings.
    This  disables all other seed constraints and seed  identification.
  type: string
  inputBinding:
    prefix: --seedTQ
- id: seed_bp
  doc: (=7)             number of inter-molecular base pairs within the seed region
    (arg in range [2,20])
  type: string
  inputBinding:
    prefix: --seedBP
- id: m
  doc: "[ --mode ] arg (=H)        prediction mode :  'H' = heuristic (fast and low\
    \ memory),  'M' = exact (slow),  'S' = seed-only"
  type: boolean
  inputBinding:
    prefix: -m
- id: model
  doc: "(=B)              interaction model :  'S' = single-site, minimum-free-energy\
    \  interaction (interior loops only),  'X' = single-site, minimum-free-energy\
    \  interaction via seed-extension (interior loops  only),  'B' = single-site,\
    \ helix-block-based,  minimum-free-energy interaction (blocks of  stable helices\
    \ and interior loops only),  'P' = single-site interaction with minimal  free\
    \ ensemble energy per site (interior loops  only)"
  type: string
  inputBinding:
    prefix: --model
- id: acc
  doc: "(=C)                accessibility computation : 'N' no accessibility contributions\
    \ 'C' computation of accessibilities (see --accW and --accL)"
  type: string
  inputBinding:
    prefix: --acc
- id: int_len_max
  doc: '(=0)          interaction site : maximal window size to be  considered for
    interaction (arg in range  [0,99999]; 0 refers to the full sequence  length).
    If --accW is provided, the smaller  window size of both is used.'
  type: string
  inputBinding:
    prefix: --intLenMax
- id: int_loop_max
  doc: '(=10)        interaction site : maximal number of unpaired  bases between
    neighbored interacting bases to  be considered in interactions (arg in range  [0,30];
    0 enforces stackings only)'
  type: string
  inputBinding:
    prefix: --intLoopMax
- id: out
  doc: "(=STDOUT)           output (multi-arg) : provide a file name for  output (will\
    \ be overwritten) or 'STDOUT/STDERR' to write to the according stream (according\
    \ to  --outMode). Use one of the following PREFIXES  (colon-separated) to generate\
    \ ADDITIONAL  output: 'qMinE:' (query) for each position the minimal energy of\
    \ any interaction covering the position (CSV format) 'qSpotProb:' (query) for\
    \ each position the  probability that is is covered by an  interaction covering\
    \ (CSV format) 'qAcc:' (query) ED accessibility values  ('qPu'-like format). 'qPu:'\
    \ (query) unpaired probabilities values  (RNAplfold format). 'tMinE:' (target)\
    \ for each position the  minimal energy of any interaction covering the  position\
    \ (CSV format) 'tSpotProb:' (target) for each position the  probability that is\
    \ is covered by an  interaction covering (CSV format) 'tAcc:' (target) ED accessibility\
    \ values  ('tPu'-like format). 'tPu:' (target) unpaired probabilities values \
    \ (RNAplfold format). 'pMinE:' (target+query) for each index pair  the minimal\
    \ energy of any interaction covering  the pair (CSV format) 'spotProb:' (target+query)\
    \ tracks for a given  set of interaction spots their probability to  be covered\
    \ by an interaction. If no spots are  provided, probabilities for all index  combinations\
    \ are computed. Spots are encoded by comma-separated 'idxT&idxQ' pairs  (target-query).\
    \ For each spot a probability is  provided in concert with the probability that\
    \  none of the spots (encoded by '0&0') is covered (CSV format). The spot encoding\
    \ is followed  colon-separated by the output stream/file name, eg. '--out=\"spotProb:3&76,59&2:STDERR\"\
    '. NOTE:  value has to be quoted due to '&' symbol! For each, provide a file name\
    \ or STDOUT/STDERR  to write to the respective output stream."
  type: string
  inputBinding:
    prefix: --out
- id: out_sep
  doc: (=;)             column separator to be used in tabular CSV  output
  type: string
  inputBinding:
    prefix: --outSep
- id: out_mode
  doc: "(=N)            output mode : 'N' normal output (ASCII char + energy), 'D'\
    \ detailed output (ASCII char +  energy/position details), 'C' CSV output (see\
    \ --outCsvCols), 'E' ensemble information"
  type: string
  inputBinding:
    prefix: --outMode
- id: n
  doc: '[ --outNumber ] arg (=1)   number of (sub)optimal interactions to report  (arg
    in range [0,1000])'
  type: boolean
  inputBinding:
    prefix: -n
- id: out_overlap
  doc: "(=B)         suboptimal output : interactions can overlap  'N' in none of\
    \ the sequences,  'T' in the target only,  'Q' in the query only,  'B' in both\
    \ sequences"
  type: string
  inputBinding:
    prefix: --outOverlap
- id: threads
  doc: (=1)            maximal number of threads to be used for  parallel computation
    of query-target  combinations. A value of 0 requests all  available CPUs. Note,
    the number of threads  multiplies the required memory used for  computation! (arg
    in range [0,8])
  type: string
  inputBinding:
    prefix: --threads
- id: personality
  doc: IntaRNA personality to be used, which defines  default values, available program
    arguments and tool behavior
  type: string
  inputBinding:
    prefix: --personality
- id: parameter_file
  doc: file from where to read additional command line arguments
  type: string
  inputBinding:
    prefix: --parameterFile
- id: full_help
  doc: show the extended help page for all available  parameters
  type: boolean
  inputBinding:
    prefix: --fullhelp
outputs: []
cwlVersion: v1.1
baseCommand:
- IntaRNAhelix
