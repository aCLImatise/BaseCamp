version 1.0

task Exoniphy {
  input {
    File? tree_models
    File? hmm
    File? cat_map
    Int? extrapolate
    File? data_path
    File? msa_format
    Boolean? score
    File? seqname
    File? id_pref
    String? group_tag
    Int? alias_names_according
    Boolean? no_cns
    Boolean? reflect_strand
    Float? bias
    File? sens_spec
    String? back_gd_types
    String? cds_types
    Int? signal_types
    Boolean? indels
    String? no_gaps
    Int? require_informative
    String? not_informative
    Boolean? quiet
    String msa_fname
  }
  command <<<
    exoniphy \
      ~{msa_fname} \
      ~{if defined(tree_models) then ("--tree-models " +  '"' + tree_models + '"') else ""} \
      ~{if defined(hmm) then ("--hmm " +  '"' + hmm + '"') else ""} \
      ~{if defined(cat_map) then ("--catmap " +  '"' + cat_map + '"') else ""} \
      ~{if defined(extrapolate) then ("--extrapolate " +  '"' + extrapolate + '"') else ""} \
      ~{if defined(data_path) then ("--data-path " +  '"' + data_path + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{if defined(id_pref) then ("--idpref " +  '"' + id_pref + '"') else ""} \
      ~{if defined(group_tag) then ("--grouptag " +  '"' + group_tag + '"') else ""} \
      ~{if defined(alias_names_according) then ("--alias " +  '"' + alias_names_according + '"') else ""} \
      ~{if (no_cns) then "--no-cns" else ""} \
      ~{if (reflect_strand) then "--reflect-strand" else ""} \
      ~{if defined(bias) then ("--bias " +  '"' + bias + '"') else ""} \
      ~{if defined(sens_spec) then ("--sens-spec " +  '"' + sens_spec + '"') else ""} \
      ~{if defined(back_gd_types) then ("--backgd-types " +  '"' + back_gd_types + '"') else ""} \
      ~{if defined(cds_types) then ("--cds-types " +  '"' + cds_types + '"') else ""} \
      ~{if defined(signal_types) then ("--signal-types " +  '"' + signal_types + '"') else ""} \
      ~{if (indels) then "--indels" else ""} \
      ~{if defined(no_gaps) then ("--no-gaps " +  '"' + no_gaps + '"') else ""} \
      ~{if defined(require_informative) then ("--require-informative " +  '"' + require_informative + '"') else ""} \
      ~{if defined(not_informative) then ("--not-informative " +  '"' + not_informative + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    tree_models: "List of tree model (*.mod) files, one for each state in the\\nHMM.  Order of models must correspond to order of states in\\nHMM file.  By default, a set of models appropriate for human,\\nmouse, and rat are used (estimated as described in Siepel &\\nHaussler, 2004)."
    hmm: "Name of HMM file defining states and transition probabilities.\\nBy default, the 60-state HMM described in Siepel & Haussler\\n(2004) is used, with transition probabilities appropriate for\\nmammalian genomes (estimated as described in that paper)."
    cat_map: "|<string>\\nMapping of feature types to category numbers.  Can give either\\na filename or an \\\"inline\\\" description of a simple category\\nmap, e.g., --catmap \\\"NCATS = 3 ; CDS 1-3\\\".  By default, a\\ncategory map is used that is appropriate for the 60-state HMM\\nmentioned above."
    extrapolate: "| default\\nExtrapolate to a larger set of species based on the given\\nphylogeny (Newick-format).  The trees in the given tree models\\n(*.mod files) must be subtrees of the larger phylogeny.  For\\neach tree model M, a copy will be created of the larger\\nphylogeny, then scaled such that the total branch length of\\nthe subtree corresponding to M's tree equals the total branch\\nlength of M's tree; this new version will then be used in\\nplace of M's tree.  (Any species name present in this tree but\\nnot in the data will be ignored.)  If the string \\\"default\\\"\\nis given instead of a filename, then a phylogeny for 25\\nvertebrate species, estimated from sequence data for Target 1\\n(CFTR) of the NISC Comparative Sequencing Program (Thomas et\\nal., 2003), will be assumed."
    data_path: "Path to the directory with phast data. Exoniphy default models should\\nbe in <path>/exoniphy/. Default is set at compile time."
    msa_format: "|PHYLIP|MPM|MAF|SS\\nFile format of input alignment.  Default is to guess alignment\\nformat from file contents."
    score: "Report log-odds scores for predictions, equal to their log\\ntotal probability under an exon model minus their log total\\nprobability under a background model.  The exon model can be\\naltered using --cds-types and --signal-types and the\\nbackground model can be altered using --backgd-types (see below)."
    seqname: "Use specified string as \\\"seqname\\\" field in GFF output.\\nDefault is obtained from input file name (double filename\\nroot, e.g., \\\"chr22\\\" if input file is \\\"chr22.35.ss\\\")."
    id_pref: "Use specified string as prefix of generated ids in GFF output.\\nCan be used to ensure ids are unique.  Default is obtained\\nfrom input file name (single filename root, e.g., \\\"chr22.35\\\"\\nif input file is \\\"chr22.35.ss\\\")."
    group_tag: "Use specified string as the tag denoting groups in GFF output\\n(default is \\\"transcript_id\\\")."
    alias_names_according: "Alias names in input alignment according to given definition,\\ne.g., \\\"hg17=human; mm5=mouse; rn3=rat\\\".  Useful with default\\ntree models and with --extrapolate.  (Default models\\nuse generic common names such as \\\"human\\\", \\\"mouse\\\", and\\n\\\"rat\\\".  This option allows a mapping to be established\\nbetween the leaves of trees in these files and the sequences\\nof an alignment that uses an alternative naming convention.)"
    no_cns: "Eliminate the state/category for conserved noncoding sequence\\nfrom the default HMM and category map.  Ignored if non-default\\nHMM and category map are selected."
    reflect_strand: "Given an HMM describing the forward strand, create a larger\\nHMM that allows for features on both strands by \\\"reflecting\\\"\\nthe HMM about all states associated with background categories\\n(see --backgd-cats).  The new HMM will be used for predictions\\non both strands.  If the default HMM is used, then this option\\nwill be used automatically."
    bias: "Set \\\"coding bias\\\" equal to the specified value (default\\n-3.33 if default HMM is used, 0 otherwise).  The coding bias\\nis added to the log probabilities of transitions from\\nbackground states to non-background states (see\\n--backgd-cats), then all transition probabilities are\\nrenormalized.  If the coding bias is positive, then more\\npredictions will tend to be made and sensitivity will tend to\\nimprove, at some cost to specificity; if it is negative, then\\nfewer predictions will tend to be made, and specificity will\\ntend to improve, at some cost to sensitivity."
    sens_spec: "Make predictions for a range of different coding\\nbiases (see --bias), and write results to files with given\\nfilename root.  This allows the sensitivity/specificity\\ntradeoff to be examined.  The range is fixed at -20 to 10,\\nand 10 different sets of predictions are produced."
    back_gd_types: "Feature types to be considered \\\"background\\\" (default value:\\n\\\"background,CNS\\\").  Affects --reflect-strand,\\n--score, and --bias."
    cds_types: "(for use with --score) Feature types that represent protein-coding\\nregions (default value: \\\"CDS\\\")."
    signal_types: "(for use with --score) Types of features to be considered\\n\\\"signals\\\" during scoring (default value:\\n\\\"start_codon,stop_codon,5'splice,3'splice,prestart,cds5'ss,cds3'ss\\\").\\nOne score is produced for a CDS feature (as defined by\\n--cds-types) and the adjacent signal features; the score is\\nthen assigned to the CDS feature."
    indels: "Use the indel model described in Siepel & Haussler (2004)."
    no_gaps: "Prohibit gaps in sites of the specified categories (gaps result in\\nemission probabilities of zero).  If the default category map\\nis used (see --catmap), then gaps are prohibited in start and\\nstop codons and at the canonical GT and AG positions of splice\\nsites (with or without --indels).  In all other cases, the\\ndefault behavior is to treat gaps as missing data, or to address\\nthem with the indel model (--indels)."
    require_informative: "Require \\\"informative\\\" columns (i.e., columns with more than\\ntwo non-missing-data characters, excluding sequences specified\\nby --not-informative) in the given categories (list by name\\nor number).  Non-informative columns will be given emission\\nprobabilities of zero.  If the default category map is used\\n(see --catmap), then this option applies automatically to\\nCDSs, start and stop codons, and the canonical GT and AG\\npositions of splice sites.  Note that alignment gaps *are*\\nconsidered informative; the way they are handled is defined by\\n--indels and --no-gaps."
    not_informative: "Do not consider the specified sequences (listed by name) when\\ndeciding whether a column is informative.  This option can be\\nuseful when sequences are present that are very close to the\\nreference sequence and thus do not contribute much in the way\\nof phylogenetic information.  E.g., one might use\\n\\\"--not-informative chimp\\\" with a human-referenced multiple\\nalignment including chimp sequence."
    quiet: "Proceed quietly (without messages to stderr)."
    msa_fname: ""
  }
  output {
    File out_stdout = stdout()
  }
}