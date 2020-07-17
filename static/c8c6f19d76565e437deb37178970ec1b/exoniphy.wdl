version 1.0

task Exoniphy {
  input {
    File? data_path
    Boolean? score
    String? seqname
    String? id_pref
    String? group_tag
    String? alias_names_according
    Boolean? no_cns
    Boolean? reflect_strand
    String? bias
    String? sens_spec
    String? back_gd_types
    String? cds_types
    String? signal_types
    Boolean? indels
    String? no_gaps
    String? require_informative
    String? not_informative
    Boolean? quiet
    String msa_fname
  }
  command <<<
    exoniphy \
      ~{msa_fname} \
      ~{if defined(data_path) then ("--data-path " +  '"' + data_path + '"') else ""} \
      ~{true="--score" false="" score} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{if defined(id_pref) then ("--idpref " +  '"' + id_pref + '"') else ""} \
      ~{if defined(group_tag) then ("--grouptag " +  '"' + group_tag + '"') else ""} \
      ~{if defined(alias_names_according) then ("--alias " +  '"' + alias_names_according + '"') else ""} \
      ~{true="--no-cns" false="" no_cns} \
      ~{true="--reflect-strand" false="" reflect_strand} \
      ~{if defined(bias) then ("--bias " +  '"' + bias + '"') else ""} \
      ~{if defined(sens_spec) then ("--sens-spec " +  '"' + sens_spec + '"') else ""} \
      ~{if defined(back_gd_types) then ("--backgd-types " +  '"' + back_gd_types + '"') else ""} \
      ~{if defined(cds_types) then ("--cds-types " +  '"' + cds_types + '"') else ""} \
      ~{if defined(signal_types) then ("--signal-types " +  '"' + signal_types + '"') else ""} \
      ~{true="--indels" false="" indels} \
      ~{if defined(no_gaps) then ("--no-gaps " +  '"' + no_gaps + '"') else ""} \
      ~{if defined(require_informative) then ("--require-informative " +  '"' + require_informative + '"') else ""} \
      ~{if defined(not_informative) then ("--not-informative " +  '"' + not_informative + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    data_path: "Path to the directory with phast data. Exoniphy default models should  be in <path>/exoniphy/. Default is set at compile time. "
    score: "Report log-odds scores for predictions, equal to their log total probability under an exon model minus their log total probability under a background model.  The exon model can be altered using --cds-types and --signal-types and the background model can be altered using --backgd-types (see below)."
    seqname: "Use specified string as \"seqname\" field in GFF output. Default is obtained from input file name (double filename root, e.g., \"chr22\" if input file is \"chr22.35.ss\")."
    id_pref: "Use specified string as prefix of generated ids in GFF output. Can be used to ensure ids are unique.  Default is obtained from input file name (single filename root, e.g., \"chr22.35\" if input file is \"chr22.35.ss\")."
    group_tag: "Use specified string as the tag denoting groups in GFF output (default is \"transcript_id\")."
    alias_names_according: "Alias names in input alignment according to given definition, e.g., \"hg17=human; mm5=mouse; rn3=rat\".  Useful with default tree models and with --extrapolate.  (Default models use generic common names such as \"human\", \"mouse\", and \"rat\".  This option allows a mapping to be established between the leaves of trees in these files and the sequences of an alignment that uses an alternative naming convention.)"
    no_cns: "Eliminate the state/category for conserved noncoding sequence from the default HMM and category map.  Ignored if non-default HMM and category map are selected."
    reflect_strand: "Given an HMM describing the forward strand, create a larger HMM that allows for features on both strands by \"reflecting\" the HMM about all states associated with background categories (see --backgd-cats).  The new HMM will be used for predictions on both strands.  If the default HMM is used, then this option will be used automatically."
    bias: "Set \"coding bias\" equal to the specified value (default -3.33 if default HMM is used, 0 otherwise).  The coding bias is added to the log probabilities of transitions from background states to non-background states (see --backgd-cats), then all transition probabilities are renormalized.  If the coding bias is positive, then more predictions will tend to be made and sensitivity will tend to improve, at some cost to specificity; if it is negative, then fewer predictions will tend to be made, and specificity will tend to improve, at some cost to sensitivity."
    sens_spec: "Make predictions for a range of different coding biases (see --bias), and write results to files with given filename root.  This allows the sensitivity/specificity tradeoff to be examined.  The range is fixed at -20 to 10,  and 10 different sets of predictions are produced."
    back_gd_types: "Feature types to be considered \"background\" (default value: \"background,CNS\").  Affects --reflect-strand, --score, and --bias."
    cds_types: "(for use with --score) Feature types that represent protein-coding regions (default value: \"CDS\")."
    signal_types: "(for use with --score) Types of features to be considered \"signals\" during scoring (default value:  \"start_codon,stop_codon,5'splice,3'splice,prestart,cds5'ss,cds3'ss\"). One score is produced for a CDS feature (as defined by --cds-types) and the adjacent signal features; the score is then assigned to the CDS feature."
    indels: "Use the indel model described in Siepel & Haussler (2004)."
    no_gaps: "Prohibit gaps in sites of the specified categories (gaps result in emission probabilities of zero).  If the default category map is used (see --catmap), then gaps are prohibited in start and stop codons and at the canonical GT and AG positions of splice sites (with or without --indels).  In all other cases, the default behavior is to treat gaps as missing data, or to address them with the indel model (--indels)."
    require_informative: "Require \"informative\" columns (i.e., columns with more than two non-missing-data characters, excluding sequences specified by --not-informative) in the given categories (list by name or number).  Non-informative columns will be given emission probabilities of zero.  If the default category map is used (see --catmap), then this option applies automatically to CDSs, start and stop codons, and the canonical GT and AG positions of splice sites.  Note that alignment gaps *are* considered informative; the way they are handled is defined by --indels and --no-gaps."
    not_informative: "Do not consider the specified sequences (listed by name) when deciding whether a column is informative.  This option can be useful when sequences are present that are very close to the reference sequence and thus do not contribute much in the way of phylogenetic information.  E.g., one might use \"--not-informative chimp\" with a human-referenced multiple alignment including chimp sequence."
    quiet: "Proceed quietly (without messages to stderr)."
    msa_fname: ""
  }
}