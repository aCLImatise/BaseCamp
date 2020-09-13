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
    Float? minh
    Boolean? saddle
    Boolean? rates
    Int? poset
    Int? path
    Boolean? sb_map
    Boolean? trans
    String basins
    String neighbors
    String rna
    String rna_no_lp
    Int rna_two
    Int rna_two_no_lp
    Int q_two
    String nni
  }
  command <<<
    barriers_RNA2 \
      ~{basins} \
      ~{neighbors} \
      ~{rna} \
      ~{rna_no_lp} \
      ~{rna_two} \
      ~{rna_two_no_lp} \
      ~{q_two} \
      ~{nni} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(moves) then ("--moves " +  '"' + moves + '"') else ""} \
      ~{if (b_size) then "--bsize" else ""} \
      ~{if (s_size) then "--ssize" else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(minh) then ("--minh " +  '"' + minh + '"') else ""} \
      ~{if (saddle) then "--saddle" else ""} \
      ~{if (rates) then "--rates" else ""} \
      ~{if defined(poset) then ("--poset " +  '"' + poset + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if (sb_map) then "--sbmap" else ""} \
      ~{if (trans) then "--trans" else ""}
  >>>
  parameter_meta {
    full_help: "Print help, including hidden options, and exit"
    quiet: "be quiet, inhibit PS output  (default=off)"
    verbose: "print more information  (default=off)"
    graph: "define graph type  (default=`RNA')"
    moves: "select move-set (if Graph allows several different\\nones)"
    b_size: "print basin sizes  (default=off)"
    s_size: "print saddle component sizes  (default=off)"
    max: "compute only the lowest <num> local minima\\n(default=`100')"
    minh: "print only minima with barrier > dE\\n(default=`0.000001')"
    saddle: "print saddle point structures  (default=off)"
    rates: "compute rates between macro states (basins)\\n(default=off)"
    poset: "input is a poset from n objective functions\\n(default=`0')"
    path: "=<l2>  backtrack path between lmins l2 and l1 (l1 < l2),\\ncan be specified multiple times"
    sb_map: "FK: output map of structures and their respective"
    trans: "FK: output a list of all transient structures and their"
    basins: "(default=off)"
    neighbors: "(default=off)"
    rna: "RNA secondary structures"
    rna_no_lp: "canonical RNA structures\\n[no]Shift       with/out shift moves [default with]"
    rna_two: "RNA secondary structures\\n[no]Shift       with/out shift moves [default with]"
    rna_two_no_lp: "canonical RNA structures, no lonely pairs\\n[no]Shift       with/out shift moves [default with]"
    q_two: "Spin Glass\\np               point mutation (default)\\nc               flip 2nd half"
    nni: "NNI moves [no other options yet]"
  }
  output {
    File out_stdout = stdout()
  }
}