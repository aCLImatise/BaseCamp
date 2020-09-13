version 1.0

task IntaRNAsTar {
  input {
    Boolean? q
    Boolean? t
    Int? helix_min_bp
    Int? helix_max_bp
    Int? helix_max_il
    Int? helix_min_pu
    Int? helix_max_e
    Boolean? helix_full_e
    Boolean? no_seed
    Int? seed_tq
    Int? seed_bp
    Boolean? arg_h_prediction
    String? model
    String? acc
    Int? int_len_max
    Int? int_loop_max
    File? out
    String? out_sep
    Boolean? arg_number_suboptimal
    String? out_overlap
    Int? threads
    String? personality
    File? parameter_file
    Boolean? full_help
    String _outmode_arg
    String arguments
    String parameters
  }
  command <<<
    IntaRNAsTar \
      ~{_outmode_arg} \
      ~{arguments} \
      ~{parameters} \
      ~{if (q) then "-q" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(helix_min_bp) then ("--helixMinBP " +  '"' + helix_min_bp + '"') else ""} \
      ~{if defined(helix_max_bp) then ("--helixMaxBP " +  '"' + helix_max_bp + '"') else ""} \
      ~{if defined(helix_max_il) then ("--helixMaxIL " +  '"' + helix_max_il + '"') else ""} \
      ~{if defined(helix_min_pu) then ("--helixMinPu " +  '"' + helix_min_pu + '"') else ""} \
      ~{if defined(helix_max_e) then ("--helixMaxE " +  '"' + helix_max_e + '"') else ""} \
      ~{if (helix_full_e) then "--helixFullE" else ""} \
      ~{if (no_seed) then "--noSeed" else ""} \
      ~{if defined(seed_tq) then ("--seedTQ " +  '"' + seed_tq + '"') else ""} \
      ~{if defined(seed_bp) then ("--seedBP " +  '"' + seed_bp + '"') else ""} \
      ~{if (arg_h_prediction) then "-m" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(acc) then ("--acc " +  '"' + acc + '"') else ""} \
      ~{if defined(int_len_max) then ("--intLenMax " +  '"' + int_len_max + '"') else ""} \
      ~{if defined(int_loop_max) then ("--intLoopMax " +  '"' + int_loop_max + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_sep) then ("--outSep " +  '"' + out_sep + '"') else ""} \
      ~{if (arg_number_suboptimal) then "-n" else ""} \
      ~{if defined(out_overlap) then ("--outOverlap " +  '"' + out_overlap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(personality) then ("--personality " +  '"' + personality + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameterFile " +  '"' + parameter_file + '"') else ""} \
      ~{if (full_help) then "--fullhelp" else ""}
  >>>
  parameter_meta {
    q: "[ --query ] arg            either an RNA sequence or the stream/file name\\nfrom where to read the query sequences (should\\nbe the shorter sequences to increase\\nefficiency); use 'STDIN' to read from standard\\ninput stream; sequences have to use IUPAC\\nnucleotide encoding; output alias is [seq2]"
    t: "[ --target ] arg           either an RNA sequence or the stream/file name\\nfrom where to read the target sequences (should\\nbe the longer sequences to increase\\nefficiency); use 'STDIN' to read from standard\\ninput stream; sequences have to use IUPAC\\nnucleotide encoding; output alias is [seq1]"
    helix_min_bp: "(=2)         minimal number of base pairs inside a helix\\n(arg in range [2,4])"
    helix_max_bp: "(=10)        maximal number of base pairs inside a helix\\n(arg in range [2,20])"
    helix_max_il: "(=0)         maximal size for each internal loop size in a\\nhelix (arg in range [0,2])."
    helix_min_pu: "(=0)         minimal unpaired probability (per sequence) of\\nconsidered helices (arg in range [0,1])."
    helix_max_e: "(=0)          maximal energy (excluding) a helix may have\\n(arg in range [-999,999])."
    helix_full_e: "[=arg(=1)] (=0)  if given (or true), the overall energy of a\\nhelix (including E_init, ED, dangling ends, ..)\\nwill be used for helixMaxE checks; otherwise\\nonly loop-terms are considered."
    no_seed: "[=arg(=1)] (=0)      if given (or true), no seed is enforced within\\nthe predicted interactions"
    seed_tq: "comma separated list of explicit seed base pair\\nencoding(s) in the format\\nstartTbpsT&startQbpsQ, e.g. '3|||.|&7||.||',\\nwhere 'startT/Q' are the indices of the 5' seed\\nends in target/query sequence and 'bpsT/Q' the\\nrespective dot-bar base pair encodings. This\\ndisables all other seed constraints and seed\\nidentification."
    seed_bp: "(=7)             number of inter-molecular base pairs within the\\nseed region (arg in range [2,20])"
    arg_h_prediction: "[ --mode ] arg (=H)        prediction mode :\\n'H' = heuristic (fast and low memory),\\n'M' = exact (slow),\\n'S' = seed-only"
    model: "(=X)              interaction model :\\n'S' = single-site, minimum-free-energy\\ninteraction (interior loops only),\\n'X' = single-site, minimum-free-energy\\ninteraction via seed-extension (interior loops\\nonly),\\n'B' = single-site, helix-block-based,\\nminimum-free-energy interaction (blocks of\\nstable helices and interior loops only),\\n'P' = single-site interaction with minimal\\nfree ensemble energy per site (interior loops\\nonly)"
    acc: "(=C)                accessibility computation :\\n'N' no accessibility contributions\\n'C' computation of accessibilities (see --accW\\nand --accL)"
    int_len_max: "(=60)         interaction site : maximal window size to be\\nconsidered for interaction (arg in range\\n[0,99999]; 0 refers to the full sequence\\nlength). If --accW is provided, the smaller\\nwindow size of both is used."
    int_loop_max: "(=8)         interaction site : maximal number of unpaired\\nbases between neighbored interacting bases to\\nbe considered in interactions (arg in range\\n[0,30]; 0 enforces stackings only)"
    out: "(=STDOUT)           output (multi-arg) : provide a file name for\\noutput (will be overwritten) or 'STDOUT/STDERR'\\nto write to the according stream (according to\\n--outMode).\\nUse one of the following PREFIXES\\n(colon-separated) to generate ADDITIONAL\\noutput:\\n'qMinE:' (query) for each position the minimal\\nenergy of any interaction covering the position\\n(CSV format)\\n'qSpotProb:' (query) for each position the\\nprobability that is is covered by an\\ninteraction covering (CSV format)\\n'qAcc:' (query) ED accessibility values\\n('qPu'-like format).\\n'qPu:' (query) unpaired probabilities values\\n(RNAplfold format).\\n'tMinE:' (target) for each position the\\nminimal energy of any interaction covering the\\nposition (CSV format)\\n'tSpotProb:' (target) for each position the\\nprobability that is is covered by an\\ninteraction covering (CSV format)\\n'tAcc:' (target) ED accessibility values\\n('tPu'-like format).\\n'tPu:' (target) unpaired probabilities values\\n(RNAplfold format).\\n'pMinE:' (target+query) for each index pair\\nthe minimal energy of any interaction covering\\nthe pair (CSV format)\\n'spotProb:' (target+query) tracks for a given\\nset of interaction spots their probability to\\nbe covered by an interaction. If no spots are\\nprovided, probabilities for all index\\ncombinations are computed. Spots are encoded by\\ncomma-separated 'idxT&idxQ' pairs\\n(target-query). For each spot a probability is\\nprovided in concert with the probability that\\nnone of the spots (encoded by '0&0') is covered\\n(CSV format). The spot encoding is followed\\ncolon-separated by the output stream/file name,\\neg. '--out=\\\"spotProb:3&76,59&2:STDERR\\\"'. NOTE:\\nvalue has to be quoted due to '&' symbol!\\nFor each, provide a file name or STDOUT/STDERR\\nto write to the respective output stream."
    out_sep: "(=;)             column separator to be used in tabular CSV"
    arg_number_suboptimal: "[ --outNumber ] arg (=1)   number of (sub)optimal interactions to report\\n(arg in range [0,1000])"
    out_overlap: "(=Q)         suboptimal output : interactions can overlap\\n'N' in none of the sequences,\\n'T' in the target only,\\n'Q' in the query only,\\n'B' in both sequences"
    threads: "(=1)            maximal number of threads to be used for\\nparallel computation of query-target\\ncombinations. A value of 0 requests all\\navailable CPUs. Note, the number of threads\\nmultiplies the required memory used for\\ncomputation! (arg in range [0,8])"
    personality: "IntaRNA personality to be used, which defines\\ndefault values, available program arguments and\\ntool behavior"
    parameter_file: "file from where to read additional command line"
    full_help: "show the extended help page for all available"
    _outmode_arg: "--outMode arg (=C)            output mode :\\n'N' normal output (ASCII char + energy),\\n'D' detailed output (ASCII char +"
    arguments: "-h [ --help ]                 show the help page for basic parameters"
    parameters: "Run --fullhelp for the extended list of parameters"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}