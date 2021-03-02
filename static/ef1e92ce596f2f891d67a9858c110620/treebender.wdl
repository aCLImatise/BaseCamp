version 1.0

task Treebender {
  input {
    String? fdot
    File? filenametxt
    Boolean? branch_lengths
    Boolean? change_names
    Boolean? clade_credibility
    Boolean? clear_internal_node_labels
    Boolean? cluster
    Boolean? depth
    Boolean? distances_to_root
    Boolean? drop_tips
    Boolean? get_tip_names
    Boolean? get_branch_numbers
    Boolean? get_relaxed_out_group
    Boolean? give_file_name
    Boolean? format
    Boolean? internal_node_stats
    Boolean? interval
    Boolean? inverse
    Boolean? is_monophyletic
    Boolean? ladder_ize
    Boolean? matrix_representation
    Boolean? mid_point_root
    Boolean? multiply_branch_lengths
    Boolean? multiply_branch_lengths_clade
    Boolean? multiply_branch_lengths_until
    Boolean? n_supported
    Boolean? nni
    Boolean? no_branch_length
    Boolean? null_short_branches
    Boolean? number_of_tax_a
    Boolean? out_group_root
    Boolean? give_tree_format
    Boolean? patristic_distances
    Boolean? random_tree
    Boolean? read_figtree_annotations
    Boolean? relaxed_out_group_root
    Boolean? set_branch_lengths
    Boolean? split
    Boolean? split_stop
    Boolean? rooted
    Boolean? sum_branch_length
    Boolean? verbose
    String? arguments
  }
  command <<<
    treebender \
      ~{arguments} \
      ~{if defined(fdot) then ("-f. " +  '"' + fdot + '"') else ""} \
      ~{if defined(filenametxt) then ("-d " +  '"' + filenametxt + '"') else ""} \
      ~{if (branch_lengths) then "--branch_lengths" else ""} \
      ~{if (change_names) then "--change_names" else ""} \
      ~{if (clade_credibility) then "--clade_credibility" else ""} \
      ~{if (clear_internal_node_labels) then "--clear_internal_node_labels" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if (depth) then "--depth" else ""} \
      ~{if (distances_to_root) then "--distances_to_root" else ""} \
      ~{if (drop_tips) then "--drop_tips" else ""} \
      ~{if (get_tip_names) then "--get_tip_names" else ""} \
      ~{if (get_branch_numbers) then "--get_branch_numbers" else ""} \
      ~{if (get_relaxed_out_group) then "--get_relaxed_outgroup" else ""} \
      ~{if (give_file_name) then "--file" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (internal_node_stats) then "--internal_node_stats" else ""} \
      ~{if (interval) then "--interval" else ""} \
      ~{if (inverse) then "--inverse" else ""} \
      ~{if (is_monophyletic) then "--is_monophyletic" else ""} \
      ~{if (ladder_ize) then "--ladderize" else ""} \
      ~{if (matrix_representation) then "--matrix_representation" else ""} \
      ~{if (mid_point_root) then "--mid_point_root" else ""} \
      ~{if (multiply_branch_lengths) then "--multiply_branch_lengths" else ""} \
      ~{if (multiply_branch_lengths_clade) then "--multiply_branch_lengths_clade" else ""} \
      ~{if (multiply_branch_lengths_until) then "--multiply_branch_lengths_until" else ""} \
      ~{if (n_supported) then "--n_supported" else ""} \
      ~{if (nni) then "--nni" else ""} \
      ~{if (no_branch_length) then "--no_branch_length" else ""} \
      ~{if (null_short_branches) then "--null_short_branches" else ""} \
      ~{if (number_of_tax_a) then "--number_of_taxa" else ""} \
      ~{if (out_group_root) then "--outgroup_root" else ""} \
      ~{if (give_tree_format) then "--output" else ""} \
      ~{if (patristic_distances) then "--patristic_distances" else ""} \
      ~{if (random_tree) then "--random_tree" else ""} \
      ~{if (read_figtree_annotations) then "--read_figtree_annotations" else ""} \
      ~{if (relaxed_out_group_root) then "--relaxed_outgroup_root" else ""} \
      ~{if (set_branch_lengths) then "--set_branch_lengths" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (split_stop) then "--split_stop" else ""} \
      ~{if (rooted) then "--rooted" else ""} \
      ~{if (sum_branch_length) then "--sum_branch_length" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fdot: "taxa should be given as extra arguments they can be given in a text"
    filenametxt: ":file_name.txt."
    branch_lengths: "[r/n]       print branch lengths, the separator can be\\ngiven as first argument after the switch, e.g.\\n-a '\\n' (default is ','). If the switch r is\\ngiven as second argument after a colon (:),\\ne.g. -a '\\n:r', the value of the root branch\\nwill be printed as well, if n (default) is\\ngiven it will not.  A separator between output\\nfrom different trees can be given after\\nanother colon."
    change_names: "[taxa]        change the name of tips. Tip names to be\\nchanged should be given pairwise with present\\nname first and new name second, separated by\\n'|'. Separate pairs should be separated by ','\\ne.g. -c 'taxon1|new1,taxon2|new2' (quotation\\nmarks required). If several tips have the same\\nname all will be changed. Changes later in the\\nlist will be effected by changes made earlier\\nin the list, e.g. -c 'taxon1|new1,new1|new2'\\nwill change the name of taxon1 to new2."
    clade_credibility: "give the log of the product of the support of\\nall clades."
    clear_internal_node_labels: "delete the internal node labels"
    cluster: "[method]                get clusters based on method, e.g. --cluster\\nbranch_length. Available methods:\\nbranch_length - separate clusters by single\\nlink clustering based on phylogenetic\\ndistance. Cut off should be given after\\ncolon, e.g. --cluster branch_length:0.03.\\nlong_branch - returns taxa in clades on\\nbranches longer than cut off. Cut off\\nshould be given after colon (:).\\ntip_name - cluster taxa based on taxon\\nannotation. Should be followed after a\\ncolon by a single character that\\nseparates different parts of the tip name\\n(default ' ') and after another colon (:) a\\nnumber giving which position in the name\\nshould be used for clustering, (default 1),\\ne.g. tip_name:\\|:5."
    depth: "get the longest distance from the root to any\\nof the tips."
    distances_to_root: "[sep.]   output the number of nodes and branch length\\ndistance to the root for each tip. The\\nseparator between tip name and value can be\\nspecified, separated by colon, e.g. -p \\\",:|\\\"\\n(default is newline and tab). A separator\\nbetween output from different trees can be\\ngiven after another colon"
    drop_tips: "[taxa]           drop the given tips from the tree, e.g. -d\\ntaxon1,taxon2,taxon3."
    get_tip_names: "[sep.]       get the names of the tips in the tree, a\\nseparator can be specified, e.g. -t \\\\n (each\\nname on separate rows; ',' is the default\\nseparator).  A separator between output from\\ndifferent trees can be given after another\\ncolon"
    get_branch_numbers: "assign branch numbers as node labels."
    get_relaxed_out_group: "[taxa]     get the taxa in the clade that include the\\nlargest fraction of the difference between\\nnumber of taxa included in the given group and\\nnumber not included in the group divided by\\nthe total number in the group. Taxa given as\\ncomma separated string (see --drop_tips)."
    give_file_name: "[file]                give file name, e.g. -f file.tree."
    format: "[newick/nexus]           give format of input, e.g. --format nexus. If\\nno format is given and the input is a file\\ntreebender will try to guess the format, if it\\nis through standard in it will assume newick\\nformat."
    internal_node_stats: "[val./par.] print stats about the values on the internal\\nnodes. Counts nodes with value above given\\nvalue, e.g. --internal_node_stats 1.96\\n(default: 1.0). If extra stats are given in\\nFigTree/treeanotator format the parameter to\\nsummarize can be given behind colon, e.g.\\n--internal_node_stats 1.96:rate, or\\n--internal_node_stats :rate."
    interval: "[integer-integer]      only print the trees in the interval. Interval\\ngiven as first tree to print - last tree to\\nprint, e.g. --interval 10-100, or just the\\nfirst tree to print, e.g. --interval 1000."
    inverse: "inverse the string of taxa, e.g. drop all tips\\nbut the given. E.g -d taxon1,taxon2,taxon3 -i"
    is_monophyletic: "[taxa]          test if the given taxa form a monophyletic\\ngroup, e.g. --is_monophyletic taxon1,taxon2."
    ladder_ize: "laddrize the tree. If followed by l - left\\nladderize, if followed by r - right ladderize\\n(default), e.g. -l r."
    matrix_representation: "present a fasta-formated matrix with splits\\nof trees coded as characters. Intended for\\nmatrix representation parsimony."
    mid_point_root: "root the tree at the mid point."
    multiply_branch_lengths: "/       multiply each branch in the tree with the\\n-u [value]                     given value, e.g. 3.5 (default 1.0)."
    multiply_branch_lengths_clade: "/ multiply branches in clades defined by the\\n-V [value:taxon_string]        most recent common ancestor of comma separated\\ntaxa. Separate clade with colon E.g. -V 3:\\nTaxon_1,Taxon_2:Taxon_3,Taxon_4."
    multiply_branch_lengths_until: "/ multiply branches in tree up until given\\n-U [value:cut off]             distance (cut off) from root with the given\\nvalue (separated by colon), e.g. 2:40 (default\\n1.0:0.0)."
    n_supported: "[value]             get the number of nodes with higher support\\nthan given value. Should be followed by value,\\ne.g. --n_supported 70.0."
    nni: "[node/all]                  perform nearest neighbor interchange. If a\\ninteger is given as extra argument the\\ninterchange will be done on that branch (use\\n--get_branch_numbers to get branch numbers).\\nIf 0 or no extra argument is given a branch\\nwill be selected randomly. If 'all' is given\\nNNI will be performed for all branches, e.g.\\n--nni 4, or --nni all."
    no_branch_length: "do not print branch lengths. If there are no\\nbranch lengths in input tree the default is to\\nprint zero length branches in the out tree.\\nThis argument override this and print no\\nbranch lengths."
    null_short_branches: "[value]     set branches with shorter than given value to 0"
    number_of_tax_a: "get the number of tips/taxa in the tree."
    out_group_root: "[taxa]         root using most recent common ancestor of given\\ntaxa, e.g. -o taxa1,taxa2."
    give_tree_format: "[newick/nexus]           give tree format for output, nexus (nex or x\\nfor short), newick (new or w for short), or\\nsvg e.g. --output x. (default w). For svg\\nextra graphical commands can be given after a\\ncolon (:). Each command should be separated by\\n&, and commands and arguments should be\\nseparated by colon. Possible commands are:\\n'width' set width of figure; 'height' set\\nhight of figure; 'offset' set offset between\\ntips and tip label; 'strokewidth' set the\\nwidth of the branches; 'fontsize' sets the\\nsize of the font used; 'font' sets which font\\nto use; and 'tipcolor' sets the color of the\\ntip labels given in parenthesis directly\\nbehind the color. 'width' and 'height' are\\nmandatory if you want to set any other\\nparameter than tip color. E.g. --output 'svg:\\nwidth:300&height:400&tipcolor:red(taxon1,\\ntaxon2,taxon3)green(taxon4)'."
    patristic_distances: "[sep.] get the total patristic distance to all other\\ntaxa in the tree for each taxon, the separator\\nbetween different taxa, and the separator\\nbetween taxon name and value can be specified\\n(separated by colon) e.g. -p \\\",: | \\\"\\n(default is new line and space). A separator\\nbetween output from different trees can be\\ngiven after another colon."
    random_tree: "get a random topology (no branch lengths) with\\ngiven number of taxa, e.g. -r 20 (default 0).\\nNumber of random trees can be given behind a\\ncolon (:), e.g. -r 20:100."
    read_figtree_annotations: "will read annotations in FigTree/treeanotator\\nformat (e.g. [&rate=1.0,height=3.0])."
    relaxed_out_group_root: "[taxa]    will root on the group defined as for\\n--get_relaxed_outgroup."
    set_branch_lengths: "[value] set all branches in the tree to the given\\nvalue, e.g. 0.5 (default 1.0)."
    split: "[method:criterion]        splits tree based on the longest branch\\n(longest_branch/l) or the mid point\\n(mid_point/m) until a stop criterion set by\\n--split_stop is reached. Which derived tree to\\nsplit in each iteration can be set after :.\\nEither the tree with the longest branch (l;\\ndefault for longest_branch split) or the tree\\nwith most tips (n; default for mid_point\\nsplit)."
    split_stop: "[stop_crit.:integer] sets criterion for when to stop splitting\\ntrees, either at a maximum number of trees\\n(max_tree_number/t) or when all trees have\\nfewer than a certain number of tips\\n(max_tree_size/s). The number should be given\\ntogather with the specific criterion after :."
    rooted: "sets if the tree should be considered as\\nrooted or not (only matters when splitting\\ntrees)."
    sum_branch_length: "get the sum of the branch lengths in the tree\\n(including root branch if length for this is\\ngiven)."
    verbose: "get additional output."
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}