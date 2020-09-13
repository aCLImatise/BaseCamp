version 1.0

task RsatPositionanalysis {
  input {
    File? specified_standard_input
    String? seqtype
    Boolean? last
    Boolean? skip
    Boolean? first
    Boolean? seq_nb
    String? mask
    File? format
    File? outputfile_returns_list
    Boolean? _verbose_level
    Boolean? oligonucleotide_length
    Boolean? ci
    String? origin
    Boolean? offset
    Boolean? group_rc
    Boolean? nogroup_rc
    Boolean? sort
    Boolean? one_str
    Boolean? two_str
    Boolean? noov
    File? return
    Boolean? tasktask_supported_taskspos
    Int? markov
    Boolean? lth_chi
    Boolean? lth_sig
    Boolean? lth_occ
    Boolean? uth_rank
    Boolean? max_graphs
    File? pl
    Boolean? sc
    Boolean? min_pos
    Boolean? max_pos
    Boolean? no_check
    Boolean? no_filter
    Int? header
    Boolean? top_seq_for_matrices
    Boolean? img_format
    Boolean? title
    Boolean? clust_method
    Boolean? clust_nb
    Boolean? clust_suffix
    String position_analysis
    String sequences
  }
  command <<<
    rsat position_analysis \
      ~{position_analysis} \
      ~{sequences} \
      ~{if defined(specified_standard_input) then ("-i " +  '"' + specified_standard_input + '"') else ""} \
      ~{if defined(seqtype) then ("-seqtype " +  '"' + seqtype + '"') else ""} \
      ~{if (last) then "-last" else ""} \
      ~{if (skip) then "-skip" else ""} \
      ~{if (first) then "-first" else ""} \
      ~{if (seq_nb) then "-seqnb" else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(outputfile_returns_list) then ("-o " +  '"' + outputfile_returns_list + '"') else ""} \
      ~{if (_verbose_level) then "-v" else ""} \
      ~{if (oligonucleotide_length) then "-l" else ""} \
      ~{if (ci) then "-ci" else ""} \
      ~{if defined(origin) then ("-origin " +  '"' + origin + '"') else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (group_rc) then "-grouprc" else ""} \
      ~{if (nogroup_rc) then "-nogrouprc" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (one_str) then "-1str" else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if (noov) then "-noov" else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if (tasktask_supported_taskspos) then "-task" else ""} \
      ~{if defined(markov) then ("-markov " +  '"' + markov + '"') else ""} \
      ~{if (lth_chi) then "-lth_chi" else ""} \
      ~{if (lth_sig) then "-lth_sig" else ""} \
      ~{if (lth_occ) then "-lth_occ" else ""} \
      ~{if (uth_rank) then "-uth_rank" else ""} \
      ~{if (max_graphs) then "-max_graphs" else ""} \
      ~{if defined(pl) then ("-pl " +  '"' + pl + '"') else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (min_pos) then "-minpos" else ""} \
      ~{if (max_pos) then "-maxpos" else ""} \
      ~{if (no_check) then "-nocheck" else ""} \
      ~{if (no_filter) then "-nofilter" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if (top_seq_for_matrices) then "-top_seq_for_matrices" else ""} \
      ~{if (img_format) then "-img_format" else ""} \
      ~{if (title) then "-title" else ""} \
      ~{if (clust_method) then "-clust_method" else ""} \
      ~{if (clust_nb) then "-clust_nb" else ""} \
      ~{if (clust_suffix) then "-clust_suffix" else ""}
  >>>
  parameter_meta {
    specified_standard_input: "if not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    seqtype: "|any\\nSequence type"
    last: "#\\nStop after # sequences (for quick testing)\\nThe possibility to limit the analysis to a few sequences\\n(e.g.50 of the input file can be useful for fine-tuning\\nthe options and ensuring that the result will appear as\\nrequested. Note that this option should not be used for\\nthe final analysis, since the significance drastically\\ndepends on the number of input sequences."
    skip: "#\\nSkip the first # sequences."
    first: "#\\nFirst sequence to analyze.\\nThe option \\\"-first n\\\" has the same effect as \\\"-skip x\\\",\\nwhere x = n-1.  These two somewhat redundant options\\nexist because in some cases it is easier to indicate the\\nfirst sequences (e.g. for naming result files according\\nto the first and last sequences analyzed).\\nThe options -skip, -last, -first and -seqnb are\\nconvenient for analyzing successive slices of at\\ndifferent depths in the sequence file (e.g. from 1 to\\n1000, then from 5001 to 6000, then from 10001 to 11000,\\netc). This allows to test if the position bias of a\\npattern is consistent over the whole sequence file, or if\\nit is confined to the top sequences.\\nAn example of useful application of this slice-based\\nanalysis is to estimate the number of relevant sequences\\nin peaks returned by applying peak-calling programs on\\nChIP-seq reads.  Peak sequences should be sorted by\\ndecreasing score values."
    seq_nb: "#\\nMaximal number of sequences to analyze. The program stops\\nreading the sequences after having reached this\\nnumber. This option is convenient for analyzing\\nsuccessive slices of at different depths in the sequence\\nfile (e.g. for peak sequences sorted by decreasing\\nscores.\\nExample: analyze N sequences starting from the X_th one.\\n-first X -seqnnb N\\nWhen used without -skip or -first, the option -seqnb\\ngives the same result as -last."
    mask: "|lower\\nMask lower or uppercases, respecively, i.e. replace\\nselected case by N characters."
    format: "file format. Must be followed by one of the\\nfollowing options:\\nfasta (default)\\nwconsensus\\nIG\\nfilelist\\nraw\\nSee below for the description of these formats."
    outputfile_returns_list: "outputfile. Returns a list of the oligonucleotides\\nencountered in the sequences, with their frequencies."
    _verbose_level: "#    verbose level."
    oligonucleotide_length: "oligonucleotide length."
    ci: "window interval (default 20 bases).\\nThe width of the position windows (in number of bases)"
    origin: "| center | end\\nReference for calculating positions.\\nThe value should be chosen according to the sequence\\ntype. For instance:\\n-origin start for downstream sequences\\n-origin end for promoter sequences\\n-origin center can be useful for ChIP-seq peaks, which\\ncan have variable lengths, but are supposed to\\nbe more or less centred on the TF binding\\nqsites."
    offset: "Add an offset to site positions. The offset value must\\nbe an Integer number (positive, null or\\nnegative). This option allows to select an arbitrary\\nposition as origin.\\nExample: the option I<-offset -100> can be used to\\nspecify the transcription start site (TSS) as origin,\\nin a collection of promoter sequences including 100\\nresidues downstream of the TSS.\\nNote: in previous versions, -origin was used to\\nspecify both the reference point and the offset. Since\\nMarch 2010, the offset is specified with the option\\n-offset."
    group_rc: "group reverse complement pairs"
    nogroup_rc: "do not group reverse complement pairs"
    sort: "sort oligonucleotides according to the chi2\\nstatistics, reflecting the level of bias in\\ndistribution profile"
    one_str: "inactivates the summation of occurrences on both\\nstrands."
    two_str: "oligonucleotide occurrences found on both stands are\\nsummed."
    noov: "no overlap\\noverlapping occurrences of the same pattern are\\nonly taken into account once"
    return: "supported fields:\\nhtml    HTML formatted results + index file\\ndistrib k-mer occurrences per position window\\nexp_occ expected occurrences for each window\\nchi     chi-square value\\nrank    rank of the pattern according to the sorting\\ncriterion\\ngraphs  one graph file per oligont profile\\nclusters run k-mer clustering (regroup k-mers having\\nsimilar occurrence profiles).\\nSeveral return fields can be entered, separated by\\ncommas."
    tasktask_supported_taskspos: "task1,task2,...\\nSupported tasks:\\npos: analyze oligonucleotide occurrences (\\\"main\\\"\\nanalysis)\\nclusters: cluster oligonucleotides according to\\ntheir occurrence profiles.\\nmatrices: build position-specific scoring matrices\\nfrom clusters of oligonucleotides occupying\\nsimilar positions.\\nWhen different values would be entered for\\noptions -min_clust_nb and -max_clust_nb,\\nmatrices and logos are only generated for the\\nmaximal number of cluster (max_clust_nb), for\\nthe sake of time efficiency and readability of\\nthe HTML reports.\\ngraphs: generate a XY graph with the occurernce\\nprofile of each oligonucleotide.\\nindex: generate the HTML file with links to the\\nresult files.\\nall: run all the tasks above\\nRun specific tasks rather than the whole analysis.\\nThis option mainly serve to avoir re-running the whole\\nsequence analysis for re-running cluster analysis with\\nmodified parameters."
    markov: "Order for the Markov model use to compute\\nposition-specific expected word frequencies.\\nBy default, expected frequencies are estimated by\\nassuming a homogeneous repartition of k-mer\\noccurrences (as in the original publication by van\\nHelden et al., 2000).\\nAlternatively, the option -markov indicates that\\nexpected frequency of each k-mer in each position\\nwindow will be calculated on the basis of the observed\\nfrequencies for smaller words."
    lth_chi: "#      lower threshold on chi2\\nreturn only words with a chi2 value > #"
    lth_sig: "#      lower threshold on significance\\nreturn only words with a sig value > #"
    lth_occ: "#      lower threshold on occurrences\\nreturn only words with a number of occurrences > #"
    uth_rank: "#     upper threshold on rank\\nreturn maximum # words"
    max_graphs: "#   maximal number of graphs to export"
    pl: "A file containing a selection of patterns.  The\\nanalysis is then restricted to these patterns.  The\\nfirst word of each new line is considered as a new\\npattern.  A score can be associated to each pattern\\nwith the option -sc."
    sc: "#   score column\\n(only valid whith the option -pl)\\nThe column containing a score value for each pattern\\nof the pattern file"
    min_pos: "#\\nminimal position to take into account for the\\nchi-square calculation This value must be a multiple\\nof the window interval."
    max_pos: "#\\nmaximal position to take into account for the\\nchi-square calculation This value must be a multiple\\nof the window interval."
    no_check: "do not check the applicability condition on the\\nchi-square. By default, the program checks that each\\nwindow has at least 5 observations. The chi-square is\\nbracketed for words which do not fill this\\nconditions. It is now recognized that this condition\\nis too restrictive, and that the chi2 is still valid\\nwith smaller clas effective. We allow to suppress the\\nchecking, but the responsibility is left to the user,\\nto decide whether the chi2 is or not significant."
    no_filter: "Do not discard oligos which do not fit the condition\\nof applicability. Instead, mark them by including the\\nchi2 value in curly brackets."
    header: "| midfloor | min | max | interval\\nInformation to display in column headers of the\\ndistributions.\\nmid: class middle points (centers)\\nmidfloor: floor of class middle points (centers).\\nthis avoids to display non-integer mid points\\n(e.g. for interval 1-10 the midpoint is 5.5)\\nmin: class min\\nmax: class max\\ninterval: class intervals: [min,max]"
    top_seq_for_matrices: "#\\nSelect the top # sequences for building position-specific\\nscoring matrices (PSSM).  This argument is passed to the\\nprogram matrix-from-pattern.\\nThis option does not affect the number of sequences used\\nfor motif discovery (detecting positionally biased\\noligonucelotides), but it can be useful to test the\\nsecond phase of motif discovery: extracion of matrices\\nfrom the selected oligonucleotides."
    img_format: "Image format (this parameter is passed to XYgraph)."
    title: "Title for the index table and position profile plots."
    clust_method: "Agglomeration rule for the hierarchical\\nclustering. Supported: complete, average, single,\\nward. Default: complete."
    clust_nb: "#\\nNumber of clusters (default: 8)."
    clust_suffix: "Suffix to append to the cluster file and the directory\\ncontianing cluster graphics. Default: 'clusters'.\\n"
    position_analysis: "1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    sequences: "pattern-discovery"
  }
  output {
    File out_stdout = stdout()
  }
}