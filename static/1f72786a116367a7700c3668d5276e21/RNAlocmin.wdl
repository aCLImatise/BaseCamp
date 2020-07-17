version 1.0

task RNAlocmin {
  input {
    Boolean? detailed_help
    Boolean? full_help
    String? seq
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
    Boolean? just_output
    Boolean? bar_tree
    String? barr_name
    String? barrier_file
    Boolean? rates
    String? rates_file
    String? temp
    String? flood_portion
    Int? flood_max
    Float? e_range
    String rna_sub_opt
  }
  command <<<
    RNAlocmin \
      ~{rna_sub_opt} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(previous) then ("--previous " +  '"' + previous + '"') else ""} \
      ~{if defined(move) then ("--move " +  '"' + move + '"') else ""} \
      ~{if defined(min_num) then ("--min-num " +  '"' + min_num + '"') else ""} \
      ~{if defined(find_num) then ("--find-num " +  '"' + find_num + '"') else ""} \
      ~{if defined(verbose_lvl) then ("--verbose-lvl " +  '"' + verbose_lvl + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(minh) then ("--minh " +  '"' + minh + '"') else ""} \
      ~{if defined(walk) then ("--walk " +  '"' + walk + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--pseudoknots" false="" pseudo_knots} \
      ~{true="--just-read" false="" just_read} \
      ~{true="--neighborhood" false="" neighborhood} \
      ~{true="--degeneracy-off" false="" degeneracy_off} \
      ~{true="--just-output" false="" just_output} \
      ~{true="--bartree" false="" bar_tree} \
      ~{if defined(barr_name) then ("--barr-name " +  '"' + barr_name + '"') else ""} \
      ~{if defined(barrier_file) then ("--barrier-file " +  '"' + barrier_file + '"') else ""} \
      ~{true="--rates" false="" rates} \
      ~{if defined(rates_file) then ("--rates-file " +  '"' + rates_file + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(flood_portion) then ("--floodPortion " +  '"' + flood_portion + '"') else ""} \
      ~{if defined(flood_max) then ("--floodMax " +  '"' + flood_max + '"') else ""} \
      ~{if defined(e_range) then ("--eRange " +  '"' + e_range + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    seq: "Sequence file in FASTA format. If the sequence is the first line of the input file, this is not needed  (default=`seq.txt')"
    previous: "Previously found LM (output from RNAlocmin or barriers), if specified does not need --seq option"
    move: "Move set: I ==> insertion & deletion of base pairs S ==> I&D& switch of base pairs  (possible values=\"I\", \"S\" default=`I')"
    min_num: "Maximal number of local minima returned (0 == unlimited)  (default=`100000')"
    find_num: "Maximal number of local minima found (default = unlimited - crawl through whole input file)"
    verbose_lvl: "Level of verbosity (0 = nothing, 4 = full) WARNING: higher verbose levels increase the computation time  (default=`0')"
    depth: "Depth of findpath search (higher value increases running time linearly)  (default=`10')"
    minh: "Print only minima with energy barrier greater than this  (default=`0.0')"
    walk: "Walking method used D ==> gradient descent F ==> use first found lower energy structure R ==> use random lower energy structure (does not work with --noLP and -m S options) (possible values=\"D\", \"F\", \"R\" default=`D')"
    no_lp: "Work only with canonical RNA structures (w/o isolated base pairs, cannot be combined with ranodm walk (-w R option) and shift move set (-m S))  (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    pseudo_knots: "Allow for pseudoknots according to \"gfold\" model - H, K, L, and M types (genus one) of pseudoknots are allowed (increases computation time greatly), cannot be combined with shift move set (-m S)  (default=off)"
    just_read: "Do not expect input from stdin, just do postprocessing.  (default=off)"
    neighborhood: "Use the Neighborhood routines to perform gradient descend. Cannot be combined with shift move set (-m S) and pseudoknots (-k). Test option. (default=off)"
    degeneracy_off: "Do not deal with degeneracy, select the lexicographically first from the same energy neighbors.  (default=off)"
    just_output: "Do not store the minima and optimize, just compute directly minima and output them. Output file can contain duplicates.  (default=off)"
    bar_tree: "Generate an approximate barrier tree. (default=off)"
    barr_name: "Name of barrier tree output file, switches on -b flag.  (default=`treeRNAloc.ps')"
    barrier_file: "File for saddle heights between LM (simulates the output format of barriers program)"
    rates: "Create rates for treekin  (default=off)"
    rates_file: "File where to write rates, switches on -r flag (default=`rates.out')"
    temp: "Temperature in Celsius (only for rates) (default=`37.0')"
    flood_portion: "Fraction of minima to flood (floods first minima with low number of inwalking sample structures) (0.0 -> no flood; 1.0 -> try to flood all) Usable only with -r or -b options. (default=`0.95')"
    flood_max: "Flood cap - how many structures to flood in one basin  (default=`1000')"
    e_range: "Report only LM, which energy is in range <MFE (or lowest found LM), MFE+eRange> in kcal/mol."
    rna_sub_opt: ""
  }
}