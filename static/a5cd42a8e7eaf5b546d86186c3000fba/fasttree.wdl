version 1.0

task Fasttree {
  input {
    String? quiet
    String? nopr
    File? log
    Boolean? fastest
    Int? analyze_alignments_onlyuse
    String? no_support
    String? in_tree
    File? in_tree_one
    String? pseudo
    Boolean? gtr
    Boolean? wag
    Boolean? quote
    String? no_ml
    String? nome
    Boolean? cat
    Boolean? gamma
    Int? constraints
    Boolean? expert
  }
  command <<<
    fasttree \
      ~{if defined(quiet) then ("-quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(nopr) then ("-nopr " +  '"' + nopr + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if (fastest) then "-fastest" else ""} \
      ~{if defined(analyze_alignments_onlyuse) then ("-n " +  '"' + analyze_alignments_onlyuse + '"') else ""} \
      ~{if defined(no_support) then ("-nosupport " +  '"' + no_support + '"') else ""} \
      ~{if defined(in_tree) then ("-intree " +  '"' + in_tree + '"') else ""} \
      ~{if defined(in_tree_one) then ("-intree1 " +  '"' + in_tree_one + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (gtr) then "-gtr" else ""} \
      ~{if (wag) then "-wag" else ""} \
      ~{if (quote) then "-quote" else ""} \
      ~{if defined(no_ml) then ("-noml " +  '"' + no_ml + '"') else ""} \
      ~{if defined(nome) then ("-nome " +  '"' + nome + '"') else ""} \
      ~{if (cat) then "-cat" else ""} \
      ~{if (gamma) then "-gamma" else ""} \
      ~{if defined(constraints) then ("-constraints " +  '"' + constraints + '"') else ""} \
      ~{if (expert) then "-expert" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "suppress reporting information"
    nopr: "suppress progress indicator"
    log: "-- save intermediate trees, settings, and model details"
    fastest: "-- speed up the neighbor joining phase & reduce memory usage\\n(recommended for >50,000 sequences)"
    analyze_alignments_onlyuse: "to analyze multiple alignments (phylip format only)\\n(use for global bootstrap, with seqboot and CompareToBootstrap.pl)"
    no_support: "not compute support values"
    in_tree: "optimize branch lengths for a fixed topology"
    in_tree_one: "to use this starting tree for all the alignments\\n(for faster global bootstrap on huge alignments)"
    pseudo: "use pseudocounts (recommended for highly gapped sequences)"
    gtr: "-- generalized time-reversible model (nucleotide alignments only)"
    wag: "-- Whelan-And-Goldman 2001 model (amino acid alignments only)"
    quote: "-- allow spaces and other restricted characters (but not ' ) in\\nsequence names and quote names in the output tree (fasta input only;\\nFastTree will not be able to read these trees back in)"
    no_ml: "turn off maximum-likelihood"
    nome: "turn off minimum-evolution NNIs and SPRs\\n(recommended if running additional ML NNIs with -intree)"
    cat: "# to specify the number of rate categories of sites (default 20)\\nor -nocat to use constant rates"
    gamma: "-- after optimizing the tree under the CAT approximation,\\nrescale the lengths to optimize the Gamma20 likelihood"
    constraints: "to constrain the topology search\\nconstraintAlignment should have 1s or 0s to indicates splits"
    expert: "-- see more options"
  }
  output {
    File out_stdout = stdout()
  }
}