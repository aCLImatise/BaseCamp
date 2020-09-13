version 1.0

task RsatPatternassembly {
  input {
    Boolean? help
    Boolean? verbose
    File? specified_standard_input
    File? specified_standard_output
    Boolean? two_str
    Boolean? one_str
    Boolean? sc
    Boolean? cc
    Boolean? max_fl
    Boolean? subst
    Boolean? match
    Boolean? weight
    Boolean? max_as_mb_nb
    Boolean? max_as_mb_per_cluster
    Boolean? max_as_mb_size
    Boolean? max_as_mb_width
    Boolean? single_sep
    Boolean? top_pat
    Boolean? max_pat
    String pattern_assembly
    String sequences
    String submitted_dot
  }
  command <<<
    rsat pattern_assembly \
      ~{pattern_assembly} \
      ~{sequences} \
      ~{submitted_dot} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(specified_standard_input) then ("-i " +  '"' + specified_standard_input + '"') else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if (one_str) then "-1str" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (cc) then "-cc" else ""} \
      ~{if (max_fl) then "-maxfl" else ""} \
      ~{if (subst) then "-subst" else ""} \
      ~{if (match) then "-match" else ""} \
      ~{if (weight) then "-weight" else ""} \
      ~{if (max_as_mb_nb) then "-max_asmb_nb" else ""} \
      ~{if (max_as_mb_per_cluster) then "-max_asmb_per_cluster" else ""} \
      ~{if (max_as_mb_size) then "-max_asmb_size" else ""} \
      ~{if (max_as_mb_width) then "-max_asmb_width" else ""} \
      ~{if (single_sep) then "-single_sep" else ""} \
      ~{if (top_pat) then "-toppat" else ""} \
      ~{if (max_pat) then "-maxpat" else ""}
  >>>
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    specified_standard_input: "if not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    two_str: "strand insensitive assembly (default).\\nWith the strand insensitive option, patterns can be\\nused either in direct or reverse complement\\norientation for assembly. For each pattern, the\\norientation which offers the best match is chosen."
    one_str: "strand sensitive assembly."
    sc: "#   score column\\nPattern assembly is a NP-hard problem, i.e. the time\\nof calculation increases exponentially with the number\\nof patterns. Beyond a certain number of patterns, it\\nis impossible to envisage all possible assemblie in\\norder to select the best ones. pattern-assembly\\nimplements a heuristic which is sensitive to the order\\nof entry of the patterns. When a score column is\\nspecified, patterns are incorporated accordingly to\\ntheir scores (higher scores are incorporated first."
    cc: "cluster column\\nDefine a column containing cluster names or numbers.\\nIf cluster column is specified, each cluster is\\ntreated as a separate set of patterns for assembly."
    max_fl: "#\\nmaximum flanking segment size (default 1).\\nThe flanking segment is the portion of a fragment that\\nextends outside of the assembly on which it is aligned."
    subst: "#\\nmaximum allowed substitutions (default 0)."
    match: "#\\nminimum number of matching residues to include a\\npattern in an assembly (default 0)."
    weight: "#\\nminimum matching weight to include a pattern in an\\nassembly (default 0). The weight is the sum\\nof informative residue matches. A single-letter match\\nhas weight 1. Matches between ambiguous nucleotides\\nhave lower weight (for example A versus [AT] has\\nweight 0.5)."
    max_as_mb_nb: "#\\nmaximal number of assemblies (default: 5)"
    max_as_mb_per_cluster: "#\\nmaximal number of assemblies per cluster\\n(default: 2).\\nThis option is only valid in combination with the\\noption -cc."
    max_as_mb_size: "#\\nmaximal assembly size, i.e. the number of patterns per\\nalignment group (default: 50)"
    max_as_mb_width: "#\\nmaximal width for an assembly (default: 0)"
    single_sep: "Report the isolated words (i.e. words that do not\\nmatch any other words) separately. This was the\\ndefault behaviour of the program before April 2011.\\nThe separate list of isolaed words presents the\\nadvantage of compacity (no need to create one assembly\\nfor each isolated word), but a drawback is that some\\nsignificant single words may appear after less\\nsignificant assemblies of several words, and thus be\\nignored for further processing (e.g. by\\nmatrix-from-patterns)."
    top_pat: "#\\nDefault: 100\\nmaximum number of patterns to assemble.  If the number\\nof patterns in the input file exceeds the maximal\\nnumber, the assembly is restrictedd with the top patterns\\nonly."
    max_pat: "#\\nmaximum number of allowed patterns (default\\n0).  If the number of patterns in the\\ninput file exceeds the maximal number, the program\\ndoes not performa ny assembly, and returns a\\ncancellation message."
    pattern_assembly: "1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    sequences: "OPTIONS"
    submitted_dot: "These options are mutually incompatible."
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}