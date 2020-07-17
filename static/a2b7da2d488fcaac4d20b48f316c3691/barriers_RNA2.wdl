version 1.0

task BarriersRNA2 {
  input {
    Boolean? full_help
    Boolean? quiet
    Boolean? verbose
    String? graph
    String? moves
    Boolean? b_size
    Boolean? s_size
    Int? max
    String? minh
    Boolean? saddle
    Boolean? rates
    Int? poset
    String? path
    Boolean? sb_map
    Boolean? trans
    String point_mutation_default
    String flip_nd_half
    String nni
    String permutations
    String transpositions
    String canonical_transpositions
    String reversals
    String exchange_moves_balances
  }
  command <<<
    barriers-RNA2 \
      ~{point_mutation_default} \
      ~{flip_nd_half} \
      ~{nni} \
      ~{permutations} \
      ~{transpositions} \
      ~{canonical_transpositions} \
      ~{reversals} \
      ~{exchange_moves_balances} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(moves) then ("--moves " +  '"' + moves + '"') else ""} \
      ~{true="--bsize" false="" b_size} \
      ~{true="--ssize" false="" s_size} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(minh) then ("--minh " +  '"' + minh + '"') else ""} \
      ~{true="--saddle" false="" saddle} \
      ~{true="--rates" false="" rates} \
      ~{if defined(poset) then ("--poset " +  '"' + poset + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{true="--sbmap" false="" sb_map} \
      ~{true="--trans" false="" trans}
  >>>
  parameter_meta {
    full_help: "Print help, including hidden options, and exit"
    quiet: "be quiet, inhibit PS output  (default=off)"
    verbose: "print more information  (default=off)"
    graph: "define graph type  (default=`RNA')"
    moves: "select move-set (if Graph allows several different ones)"
    b_size: "print basin sizes  (default=off)"
    s_size: "print saddle component sizes  (default=off)"
    max: "compute only the lowest <num> local minima (default=`100')"
    minh: "print only minima with barrier > dE (default=`0.000001')"
    saddle: "print saddle point structures  (default=off)"
    rates: "compute rates between macro states (basins) (default=off)"
    poset: "input is a poset from n objective functions (default=`0')"
    path: "=<l2>  backtrack path between lmins l2 and l1 (l1 < l2), can be specified multiple times"
    sb_map: "FK: output map of structures and their respective basins  (default=off)"
    trans: "FK: output a list of all transient structures and their neighbors  (default=off)"
    point_mutation_default: "point mutation (default)"
    flip_nd_half: "flip 2nd half"
    nni: "NNI moves [no other options yet]"
    permutations: "Permutations"
    transpositions: "Transpositions [default]"
    canonical_transpositions: "Canonical Transpositions"
    reversals: "Reversals"
    exchange_moves_balances: "Exchange Moves on balances +/- strings"
  }
}