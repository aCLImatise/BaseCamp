version 1.0

task RNAblueprint {
  input {
    Boolean? _be_verbose
    Boolean? _verbose_debugging
    Boolean? _optional
    Boolean? o
    Boolean? g
    Boolean? sample_stochastic_sampling
    Boolean? s
    Boolean? n
  }
  command <<<
    RNAblueprint \
      ~{true="-v" false="" _be_verbose} \
      ~{true="-d" false="" _verbose_debugging} \
      ~{true="-i" false="" _optional} \
      ~{true="-o" false="" o} \
      ~{true="-g" false="" g} \
      ~{true="-m" false="" sample_stochastic_sampling} \
      ~{true="-s" false="" s} \
      ~{true="-n" false="" n}
  >>>
  parameter_meta {
    _be_verbose: "[ --verbose ]             be verbose"
    _verbose_debugging: "[ --debug ]               be verbose for debugging"
    _optional: "[ --in ] arg              input file which contains the structures,  sequence constraints and the start sequence  [string] structures: secondary structures in dot-bracket  notation. one structure per input  line sequence constraints: Permanent sequence  constraints in IUPAC  notation [ACGTUWSMKRYBDHVN ] (optional) start sequence:  A initial RNA sequence to start the sampling from [ACGU]  (optional)"
    o: "[ --out ] arg             output file for writing the sequences (default:  stdout) [string]"
    g: "[ --graphml ] arg         write a GraphML file representing the dependency graph to the given filename (optional) [string]"
    sample_stochastic_sampling: "[ --mode ] arg (=sample)  mode for sequence generation [string]: sample: stochastic sampling of all positions  (default) sample-clocal: Only sample one connected  component at a time starting from an initial sequence sample-plocal: Sample only single paths starting from an initial sequence clocal-neighbors: Only find neighboring  sequences to the initial start sequence by sampling one  connected component only plocal-neighbors: Only find neighboring  sequences to the initial start sequence by sampling one path  only"
    s: "[ --seed ] arg            random number generator seed [unsigned long]"
    n: "[ --num ] arg (=10)       number of designs (default: 10) [unsigned int]"
  }
}