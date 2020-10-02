version 1.0

task Fasta2shrepGspanpl {
  input {
    Boolean? man
    Boolean? shift
    Boolean? cue
    Boolean? stack
    Boolean? float_eg_energy
    Boolean? integer_eg_relative
    Boolean? integer_eg_shape
    Boolean? integer_eg_max
    Boolean? ignore_option_filters
    Boolean? calculate_structure_probabilities
    Boolean? int_eg_turn
    Boolean? sample_len
    Boolean? turn_shape_probabilities
    Boolean? tp
    Boolean? seq_graph_win
    Boolean? seq_graph_t
    String? seq_graph_alph
    Boolean? annotate
    Boolean? abstr
    Boolean? match_shape
    Boolean? vp
    Boolean? tmp
    Directory? string_eg_output
    Boolean? group
    Boolean? stdout
    Boolean? ignore_header
    Boolean? debug
    String help
    String compulsory
    String options
    String instances_dot
  }
  command <<<
    fasta2shrep_gspan_pl \
      ~{help} \
      ~{compulsory} \
      ~{options} \
      ~{instances_dot} \
      ~{if (man) then "-man" else ""} \
      ~{if (shift) then "-shift" else ""} \
      ~{if (cue) then "-cue" else ""} \
      ~{if (stack) then "-stack" else ""} \
      ~{if (float_eg_energy) then "-e" else ""} \
      ~{if (integer_eg_relative) then "-c" else ""} \
      ~{if (integer_eg_shape) then "-t" else ""} \
      ~{if (integer_eg_max) then "-M" else ""} \
      ~{if (ignore_option_filters) then "-u" else ""} \
      ~{if (calculate_structure_probabilities) then "-r" else ""} \
      ~{if (int_eg_turn) then "-i" else ""} \
      ~{if (sample_len) then "-sample-len" else ""} \
      ~{if (turn_shape_probabilities) then "-q" else ""} \
      ~{if (tp) then "-Tp" else ""} \
      ~{if (seq_graph_win) then "-seq-graph-win" else ""} \
      ~{if (seq_graph_t) then "-seq-graph-t" else ""} \
      ~{if defined(seq_graph_alph) then ("-seq-graph-alph " +  '"' + seq_graph_alph + '"') else ""} \
      ~{if (annotate) then "-annotate" else ""} \
      ~{if (abstr) then "-abstr" else ""} \
      ~{if (match_shape) then "-match-shape" else ""} \
      ~{if (vp) then "-vp" else ""} \
      ~{if (tmp) then "-tmp" else ""} \
      ~{if (string_eg_output) then "-o" else ""} \
      ~{if (group) then "-group" else ""} \
      ~{if (stdout) then "-stdout" else ""} \
      ~{if (ignore_header) then "-ignore-header" else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  parameter_meta {
    man: "full documentation"
    shift: "<INTEGER> e.g. 20\\nThe shift of the window, relative to the window size given in\\npercent. So you give which percent of the window size shall be\\nused for the shift. Of course the shift is rounded down to the\\nnearest whole number.\\nExample 20 % of a window 150 would result in a step size of 30 nt.\\nIt is a relative parameter, as you can give different window sizes.\\nIf you do not give this parameter there is a default shift of 1 nt."
    cue: "Crop unpaired ends.\\nIf you give this flag, then the unpaired ends of each\\nsingle structure are ignored. E.g. the structure\\n...(((...))).. becomes just (((...)))"
    stack: "Adds stacking information to graphs. This adds an additional\\nvertex (type P) for each pair of stacked base-pairs and four edges\\n(type p) from each of the involved bases to the new vertex."
    float_eg_energy: "<FLOAT> e.g. 5.0\\nEnergy range in kcal/mol (RNAshapes)\\nUse only one of -e and -c!"
    integer_eg_relative: "<INTEGER> e.g. 10\\nRelative energy range, i.e. percentage (%) of MFE energy (RNAshapes)\\nUse only one of -e and -c!"
    integer_eg_shape: "<INTEGER> [1-5] e.g. 3 OR \\\"3=0,4=100,5=200\\\"\\nThe shape type (RNAshapes). Default is 3.\\nWith the list format, the shape level can be changed for different window length\\n\\\"4=100\\\" means that shape level 4 is used from length 100nt (window length)\\nThe first given length has to be 0! Not continuous given levels are allowed!"
    integer_eg_max: "<INTEGER> e.g. 10\\nMax number of shreps that should be taken per window."
    ignore_option_filters: "Ignore unstable structures (RNAshapes).\\nThis option filters out closed structures with positive free energy."
    calculate_structure_probabilities: "Calculate structure probabilities for shreps (RNAshapes)"
    int_eg_turn: "<INT> e.g. 10\\nTurn on structure sampling and gives number of sampling iterations.\\nDefault no sampling (i=0)"
    sample_len: "<INT> e.g. 100\\nOnly in sampling mode: Sampling is only used for seqs/windows >= given length,\\nDefault: sample all lengths (0), if -i > 0"
    turn_shape_probabilities: "Turn on shape probabilities for RNAshapes, no sampling mode allowed"
    tp: "<FLOAT> e.g 0.001\\nFilter cutoff for shape probabilities, applied before -M filter!"
    seq_graph_win: "add for each window a graph which contains no structure"
    seq_graph_t: "add for each 't #' a graph which contains no structure"
    seq_graph_alph: "the alphabet of unstructured graphs"
    annotate: "<STRING> annotation.tab\\nA file with annotations to be added as abstract graphs\\non the sequence leven (if given) and on the structure\\n(SHREP) level. The format is has the following TAB-delimited\\ncolumns: SEQID, START, END, NAMESPACE#LABEL.\\nLabels with the same name-space and SEQID form connected\\ncomponents, which is a sequence of label vertices ordered\\nby the START position in the sequence."
    abstr: "Add abstract structure graphs to the single shrep graph"
    match_shape: "<SHAPE>\\nall seqs/windows will be constraint folded into that shape via\\nRNAshapes (if structure is given in another way this struct will be kept),\\nif this shape is not possible within given energy range, produce a\\nspecific t graph with only one vertex 'X'. By this the instance\\nbecomes very unsimilar to all other graphs (for knn)"
    vp: "enable graph computation with viewpoints:\\nsvmsgdnspdk will center on those nucleotides that are given\\nvia capital letters and ignore those given as lowercase letters"
    tmp: "<STRING> e.g. \\\"/scratch/1/sita/tmp\\\"\\nA directory for writing temporary files"
    string_eg_output: "<STRING> e.g. \\\"ProjectX/MySequences/GSPAN/\\\"\\nOutput directory for gspan files containing graphs."
    group: "<INTEGER> e.g. 5\\nCombine/group that number of input seqs into 1 gspan file\\noutput name is then '<INT>.group.gspan.bz2'"
    stdout: "send graphs to stdout instead of writing to files"
    ignore_header: "don't write fasta id part after first space to gspan"
    debug: "additional debug output"
    help: "-help   brief help message"
    compulsory: "-fasta  <STRING> e.g. \\\"sequence.fasta\\\"\\nAll sequences in fasta format."
    options: "-wins           [INTEGER] e.g. \\\"50,100,200\\\"\\nA list of window sizes to use.\\nIf none are given (empty string ''), then the entire sequence is\\ntaken with no windows. Each window > 1 required!"
    instances_dot: "-nostr                  Calculate no structures, only add sequence information,"
  }
  output {
    File out_stdout = stdout()
    Directory out_string_eg_output = "${in_string_eg_output}"
  }
}