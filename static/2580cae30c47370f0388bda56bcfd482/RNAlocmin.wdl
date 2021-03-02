version 1.0

task RNAlocmin {
  input {
    Boolean? detailed_help
    Boolean? full_help
    File? seq
    String? previous
    String? move
    Int? min_num
    Int? find_num
    Int? verbose_lvl
    Int? depth
    String? minh
    String? walk
    Boolean? no_lp
    String? param_file
    Int? dangles
    Boolean? pseudo_knots
    Boolean? just_read
    Boolean? neighborhood
    Boolean? degeneracy_off
    File? just_output
    Boolean? bar_tree
    File? barr_name
    File? barrier_file
    Boolean? rates
    File? rates_file
    Float? temp
    Int? flood_portion
    Int? flood_max
    Float? e_range
    String this
    String postprocessing_dot
    String flag_dot
    String basin
  }
  command <<<
    RNAlocmin \
      ~{this} \
      ~{postprocessing_dot} \
      ~{flag_dot} \
      ~{basin} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(previous) then ("--previous " +  '"' + previous + '"') else ""} \
      ~{if defined(move) then ("--move " +  '"' + move + '"') else ""} \
      ~{if defined(min_num) then ("--min-num " +  '"' + min_num + '"') else ""} \
      ~{if defined(find_num) then ("--find-num " +  '"' + find_num + '"') else ""} \
      ~{if defined(verbose_lvl) then ("--verbose-lvl " +  '"' + verbose_lvl + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(minh) then ("--minh " +  '"' + minh + '"') else ""} \
      ~{if defined(walk) then ("--walk " +  '"' + walk + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (pseudo_knots) then "--pseudoknots" else ""} \
      ~{if (just_read) then "--just-read" else ""} \
      ~{if (neighborhood) then "--neighborhood" else ""} \
      ~{if (degeneracy_off) then "--degeneracy-off" else ""} \
      ~{if (just_output) then "--just-output" else ""} \
      ~{if (bar_tree) then "--bartree" else ""} \
      ~{if defined(barr_name) then ("--barr-name " +  '"' + barr_name + '"') else ""} \
      ~{if defined(barrier_file) then ("--barrier-file " +  '"' + barrier_file + '"') else ""} \
      ~{if (rates) then "--rates" else ""} \
      ~{if defined(rates_file) then ("--rates-file " +  '"' + rates_file + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(flood_portion) then ("--floodPortion " +  '"' + flood_portion + '"') else ""} \
      ~{if defined(flood_max) then ("--floodMax " +  '"' + flood_max + '"') else ""} \
      ~{if defined(e_range) then ("--eRange " +  '"' + e_range + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    seq: "Sequence file in FASTA format. If the sequence is\\nthe first line of the input file, this is not\\nneeded  (default=`seq.txt')"
    previous: "Previously found LM (output from RNAlocmin or\\nbarriers), if specified does not need --seq\\noption"
    move: "Move set:\\nI ==> insertion & deletion of base pairs\\nS ==> I&D& switch of base pairs  (possible\\nvalues=\\\"I\\\", \\\"S\\\" default=`I')"
    min_num: "Maximal number of local minima returned\\n(0 == unlimited)  (default=`100000')"
    find_num: "Maximal number of local minima found\\n(default = unlimited - crawl through whole input\\nfile)"
    verbose_lvl: "Level of verbosity (0 = nothing, 4 = full)\\nWARNING: higher verbose levels increase the\\ncomputation time  (default=`0')"
    depth: "Depth of findpath search (higher value increases\\nrunning time linearly)  (default=`10')"
    minh: "Print only minima with energy barrier greater than"
    walk: "Walking method used\\nD ==> gradient descent\\nF ==> use first found lower energy structure\\nR ==> use random lower energy structure (does\\nnot work with --noLP and -m S options)\\n(possible values=\\\"D\\\", \\\"F\\\", \\\"R\\\"\\ndefault=`D')"
    no_lp: "Work only with canonical RNA structures (w/o\\nisolated base pairs, cannot be combined with\\nranodm walk (-w R option) and shift move set (-m\\nS))  (default=off)"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    pseudo_knots: "Allow for pseudoknots according to \\\"gfold\\\" model\\n- H, K, L, and M types (genus one) of\\npseudoknots are allowed (increases computation\\ntime greatly), cannot be combined with shift\\nmove set (-m S)  (default=off)"
    just_read: "Do not expect input from stdin, just do"
    neighborhood: "Use the Neighborhood routines to perform gradient\\ndescend. Cannot be combined with shift move set\\n(-m S) and pseudoknots (-k). Test option.\\n(default=off)"
    degeneracy_off: "Do not deal with degeneracy, select the\\nlexicographically first from the same energy\\nneighbors.  (default=off)"
    just_output: "Do not store the minima and optimize, just compute\\ndirectly minima and output them. Output file can\\ncontain duplicates.  (default=off)"
    bar_tree: "Generate an approximate barrier tree.\\n(default=off)"
    barr_name: "Name of barrier tree output file, switches on -b"
    barrier_file: "File for saddle heights between LM (simulates the\\noutput format of barriers program)"
    rates: "Create rates for treekin  (default=off)"
    rates_file: "File where to write rates, switches on -r flag\\n(default=`rates.out')"
    temp: "Temperature in Celsius (only for rates)\\n(default=`37.0')"
    flood_portion: "Fraction of minima to flood (floods first minima\\nwith low number of inwalking sample structures)\\n(0.0 -> no flood; 1.0 -> try to flood all)\\nUsable only with -r or -b options.\\n(default=`0.95')"
    flood_max: "Flood cap - how many structures to flood in one"
    e_range: "Report only LM, which energy is in range <MFE (or\\nlowest found LM), MFE+eRange> in kcal/mol.\\n"
    this: "(default=`0.0')"
    postprocessing_dot: "(default=off)"
    flag_dot: "(default=`treeRNAloc.ps')"
    basin: "(default=`1000')"
  }
  output {
    File out_stdout = stdout()
    File out_just_output = "${in_just_output}"
    File out_barr_name = "${in_barr_name}"
    File out_barrier_file = "${in_barrier_file}"
    File out_rates_file = "${in_rates_file}"
  }
}