version 1.0

task RNAclustpl {
  input {
    Boolean? file_name_fasta
    Boolean? dir_name_target
    Boolean? cpu
    Boolean? dp_only
    Boolean? dp_dir
    Boolean? integer_start_pairwise
    Boolean? end
    Boolean? tree
    Boolean? malig
    Boolean? rnasoup_immediatly_computing
    Directory? rna_soup_only
    Boolean? add_sequence
    Boolean? loca_rna_opts
    Boolean? mlo_carna_opts
    Boolean? man
    File? local_bin
    String appends
    String final
    String starts
    String stop
    String brief
    String var_21
    String dir_name
    Directory directory_dot
    File file_name
    String full
    String instead
    Int integer
    String print
    String activates
    Directory var_30
    String var_31
    Int number
    String var_33
    String var_34
    String target
    String after
    String cluster_tree
    String documentation
    String help
    Directory var_40
    String dot_plots
    File file
    String immediatly
    String message
    String of
    String sequences
    String with
    String cpus
    String tgt_dir
    String all
    String are
    String dot_plots_dot
    String global
    String pairwise
    String traversed
    String use
    String alignment
    String available
    String computing
    String created_dot
    String var_61
    String alignments
    String var_63
    String idot
    String j_dot
    String multiple
    String on
    String var_68
    String have
    String in
    String is
    String your
    String been
    String case
    String for
    String machine_dot
    String useful
    String calls
    String an
    String computed
    String each
    String var_if
    String you
    String distribute
    String existing
    String internal
    String to
    String cluster
    String loca_rna
    String var_90
    String and
    String tree_dot
    String var_93
  }
  command <<<
    RNAclust_pl \
      ~{appends} \
      ~{final} \
      ~{starts} \
      ~{stop} \
      ~{brief} \
      ~{var_21} \
      ~{dir_name} \
      ~{directory_dot} \
      ~{file_name} \
      ~{full} \
      ~{instead} \
      ~{integer} \
      ~{print} \
      ~{activates} \
      ~{var_30} \
      ~{var_31} \
      ~{number} \
      ~{var_33} \
      ~{var_34} \
      ~{target} \
      ~{after} \
      ~{cluster_tree} \
      ~{documentation} \
      ~{help} \
      ~{var_40} \
      ~{dot_plots} \
      ~{file} \
      ~{immediatly} \
      ~{message} \
      ~{of} \
      ~{sequences} \
      ~{with} \
      ~{cpus} \
      ~{tgt_dir} \
      ~{all} \
      ~{are} \
      ~{dot_plots_dot} \
      ~{global} \
      ~{pairwise} \
      ~{traversed} \
      ~{use} \
      ~{alignment} \
      ~{available} \
      ~{computing} \
      ~{created_dot} \
      ~{var_61} \
      ~{alignments} \
      ~{var_63} \
      ~{idot} \
      ~{j_dot} \
      ~{multiple} \
      ~{on} \
      ~{var_68} \
      ~{have} \
      ~{in} \
      ~{is} \
      ~{your} \
      ~{been} \
      ~{case} \
      ~{for} \
      ~{machine_dot} \
      ~{useful} \
      ~{calls} \
      ~{an} \
      ~{computed} \
      ~{each} \
      ~{var_if} \
      ~{you} \
      ~{distribute} \
      ~{existing} \
      ~{internal} \
      ~{to} \
      ~{cluster} \
      ~{loca_rna} \
      ~{var_90} \
      ~{and} \
      ~{tree_dot} \
      ~{var_93} \
      ~{if (file_name_fasta) then "--fasta" else ""} \
      ~{if (dir_name_target) then "--dir" else ""} \
      ~{if (cpu) then "--cpu" else ""} \
      ~{if (dp_only) then "--dponly" else ""} \
      ~{if (dp_dir) then "--dpdir" else ""} \
      ~{if (integer_start_pairwise) then "--start" else ""} \
      ~{if (end) then "--end" else ""} \
      ~{if (tree) then "--tree" else ""} \
      ~{if (malig) then "--malig" else ""} \
      ~{if (rnasoup_immediatly_computing) then "--rnasoup" else ""} \
      ~{if (rna_soup_only) then "--rnasoup-only" else ""} \
      ~{if (add_sequence) then "--addSequence" else ""} \
      ~{if (loca_rna_opts) then "--locarna-opts" else ""} \
      ~{if (mlo_carna_opts) then "--mlocarna-opts" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if defined(local_bin) then ("--localbin " +  '"' + local_bin + '"') else ""}
  >>>
  parameter_meta {
    file_name_fasta: "<file name>                     FASTA file\\n(required)"
    dir_name_target: "<dir name>                      Target directory TGTDIR\\n(required)"
    cpu: "<integer>                       Number of CPUs available on your machine. Calls to locarna and\\nRNAfold will be distributed equally on those CPUs. (default: 1)\\n(optional)"
    dp_only: "Stop after dotplots are created. This option is useful if\\ncalculation of pairwise alignments will be distributed among\\ndifferent machines.\\n(optional)"
    dp_dir: "<dir>                           Directory of dotplots. Use this option in case you distribute the\\ncalculation of pairwise alignments among different machines using\\n--start and --end options.\\n(optional)"
    integer_start_pairwise: "<integer>                       Start with pairwise alignment i.\\n(optional)"
    end: "<integer>                       Stop with pairwise alignment j.\\n(optional, except --start is specified)"
    tree: "Use this option after all pairwise alignments have been computed\\non different machines (options --start, --end) in order to generate\\nthe hierarchical cluster-tree. The pairwise alignments must be moved\\nto one 'paligs' directory beforehand.\\n(optional)"
    malig: "Final cluster-tree is traversed and multiple alignment for each internal\\nnode is computed progressively, default: no\\n(optional)"
    rnasoup_immediatly_computing: "Starts RNAsoup immediatly after computing the pairwise alignments and\\nthe hierarchical tree. Results are written to the subfold 'rnasoup'.\\nActivates the --malig option.\\n(optional)"
    rna_soup_only: "Starts just RNAsoup on an existing RNAclust directory. Activates --malig\\nif there are no multiple alignments available. Writes RNAsoup output to a\\nsubfolder called 'rnasoup'.\\n(optional)"
    add_sequence: "Appends the sequences in the fasta file to an existing cluster tree. The\\nfolder containing the existing tree is defined by --dir. A subfolder,\\nnamed 'additionalSeqs', containing the new tree and additional files will\\nbe created there. This function is still experimental, not all combinations\\nof parameter will work.\\n(optional)"
    loca_rna_opts: "<\\\"locarna options\\\">          Options passed directly to locarna (must be given as one string)\\n(optional)"
    mlo_carna_opts: "<\\\"mlocarna options\\\">        Options passed directly to mlocarna (must be given as one string).\\nmlocarna is used if multiple alignments for the internal nodes will be\\ncalculated (see --malig).\\n(optional)"
    man: "full documentation\\n(optional)"
    local_bin: "Use the rnaclust, rnasoup and pgma binaries from a local installation\\ninstead of the global one.\\n"
    appends: ""
    final: ""
    starts: ""
    stop: ""
    brief: ""
    var_21: ""
    dir_name: ""
    directory_dot: ""
    file_name: ""
    full: ""
    instead: ""
    integer: ""
    print: ""
    activates: ""
    var_30: ""
    var_31: ""
    number: ""
    var_33: ""
    var_34: ""
    target: ""
    after: ""
    cluster_tree: ""
    documentation: ""
    help: ""
    var_40: ""
    dot_plots: ""
    file: ""
    immediatly: ""
    message: ""
    of: ""
    sequences: ""
    with: ""
    cpus: ""
    tgt_dir: ""
    all: ""
    are: ""
    dot_plots_dot: ""
    global: ""
    pairwise: ""
    traversed: ""
    use: ""
    alignment: ""
    available: ""
    computing: ""
    created_dot: ""
    var_61: ""
    alignments: ""
    var_63: ""
    idot: ""
    j_dot: ""
    multiple: ""
    on: ""
    var_68: ""
    have: ""
    in: ""
    is: ""
    your: ""
    been: ""
    case: ""
    for: ""
    machine_dot: ""
    useful: ""
    calls: ""
    an: ""
    computed: ""
    each: ""
    var_if: ""
    you: ""
    distribute: ""
    existing: ""
    internal: ""
    to: ""
    cluster: ""
    loca_rna: ""
    var_90: ""
    and: ""
    tree_dot: ""
    var_93: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_rna_soup_only = "${in_rna_soup_only}"
  }
}