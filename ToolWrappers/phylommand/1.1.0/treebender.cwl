class: CommandLineTool
id: treebender.cwl
inputs:
- id: in_fdot
  doc: taxa should be given as extra arguments they can be given in a text
  type: string?
  inputBinding:
    prefix: -f.
- id: in_filenametxt
  doc: :file_name.txt.
  type: File?
  inputBinding:
    prefix: -d
- id: in_branch_lengths
  doc: "[r/n]       print branch lengths, the separator can be\ngiven as first argument\
    \ after the switch, e.g.\n-a '\\n' (default is ','). If the switch r is\ngiven\
    \ as second argument after a colon (:),\ne.g. -a '\\n:r', the value of the root\
    \ branch\nwill be printed as well, if n (default) is\ngiven it will not.  A separator\
    \ between output\nfrom different trees can be given after\nanother colon."
  type: boolean?
  inputBinding:
    prefix: --branch_lengths
- id: in_change_names
  doc: "[taxa]        change the name of tips. Tip names to be\nchanged should be\
    \ given pairwise with present\nname first and new name second, separated by\n\
    '|'. Separate pairs should be separated by ','\ne.g. -c 'taxon1|new1,taxon2|new2'\
    \ (quotation\nmarks required). If several tips have the same\nname all will be\
    \ changed. Changes later in the\nlist will be effected by changes made earlier\n\
    in the list, e.g. -c 'taxon1|new1,new1|new2'\nwill change the name of taxon1 to\
    \ new2."
  type: boolean?
  inputBinding:
    prefix: --change_names
- id: in_clade_credibility
  doc: "give the log of the product of the support of\nall clades."
  type: boolean?
  inputBinding:
    prefix: --clade_credibility
- id: in_clear_internal_node_labels
  doc: delete the internal node labels
  type: boolean?
  inputBinding:
    prefix: --clear_internal_node_labels
- id: in_cluster
  doc: "[method]                get clusters based on method, e.g. --cluster\nbranch_length.\
    \ Available methods:\nbranch_length - separate clusters by single\nlink clustering\
    \ based on phylogenetic\ndistance. Cut off should be given after\ncolon, e.g.\
    \ --cluster branch_length:0.03.\nlong_branch - returns taxa in clades on\nbranches\
    \ longer than cut off. Cut off\nshould be given after colon (:).\ntip_name - cluster\
    \ taxa based on taxon\nannotation. Should be followed after a\ncolon by a single\
    \ character that\nseparates different parts of the tip name\n(default ' ') and\
    \ after another colon (:) a\nnumber giving which position in the name\nshould\
    \ be used for clustering, (default 1),\ne.g. tip_name:\\|:5."
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_depth
  doc: "get the longest distance from the root to any\nof the tips."
  type: boolean?
  inputBinding:
    prefix: --depth
- id: in_distances_to_root
  doc: "[sep.]   output the number of nodes and branch length\ndistance to the root\
    \ for each tip. The\nseparator between tip name and value can be\nspecified, separated\
    \ by colon, e.g. -p \",:|\"\n(default is newline and tab). A separator\nbetween\
    \ output from different trees can be\ngiven after another colon"
  type: boolean?
  inputBinding:
    prefix: --distances_to_root
- id: in_drop_tips
  doc: "[taxa]           drop the given tips from the tree, e.g. -d\ntaxon1,taxon2,taxon3."
  type: boolean?
  inputBinding:
    prefix: --drop_tips
- id: in_get_tip_names
  doc: "[sep.]       get the names of the tips in the tree, a\nseparator can be specified,\
    \ e.g. -t \\\\n (each\nname on separate rows; ',' is the default\nseparator).\
    \  A separator between output from\ndifferent trees can be given after another\n\
    colon"
  type: boolean?
  inputBinding:
    prefix: --get_tip_names
- id: in_get_branch_numbers
  doc: assign branch numbers as node labels.
  type: boolean?
  inputBinding:
    prefix: --get_branch_numbers
- id: in_get_relaxed_out_group
  doc: "[taxa]     get the taxa in the clade that include the\nlargest fraction of\
    \ the difference between\nnumber of taxa included in the given group and\nnumber\
    \ not included in the group divided by\nthe total number in the group. Taxa given\
    \ as\ncomma separated string (see --drop_tips)."
  type: boolean?
  inputBinding:
    prefix: --get_relaxed_outgroup
- id: in_file
  doc: '[file]                give file name, e.g. -f file.tree.'
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_format
  doc: "[newick/nexus]           give format of input, e.g. --format nexus. If\nno\
    \ format is given and the input is a file\ntreebender will try to guess the format,\
    \ if it\nis through standard in it will assume newick\nformat."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_internal_node_stats
  doc: "[val./par.] print stats about the values on the internal\nnodes. Counts nodes\
    \ with value above given\nvalue, e.g. --internal_node_stats 1.96\n(default: 1.0).\
    \ If extra stats are given in\nFigTree/treeanotator format the parameter to\n\
    summarize can be given behind colon, e.g.\n--internal_node_stats 1.96:rate, or\n\
    --internal_node_stats :rate."
  type: boolean?
  inputBinding:
    prefix: --internal_node_stats
- id: in_interval
  doc: "[integer-integer]      only print the trees in the interval. Interval\ngiven\
    \ as first tree to print - last tree to\nprint, e.g. --interval 10-100, or just\
    \ the\nfirst tree to print, e.g. --interval 1000."
  type: boolean?
  inputBinding:
    prefix: --interval
- id: in_inverse
  doc: "inverse the string of taxa, e.g. drop all tips\nbut the given. E.g -d taxon1,taxon2,taxon3\
    \ -i"
  type: boolean?
  inputBinding:
    prefix: --inverse
- id: in_is_monophyletic
  doc: "[taxa]          test if the given taxa form a monophyletic\ngroup, e.g. --is_monophyletic\
    \ taxon1,taxon2."
  type: boolean?
  inputBinding:
    prefix: --is_monophyletic
- id: in_ladder_ize
  doc: "laddrize the tree. If followed by l - left\nladderize, if followed by r -\
    \ right ladderize\n(default), e.g. -l r."
  type: boolean?
  inputBinding:
    prefix: --ladderize
- id: in_matrix_representation
  doc: "present a fasta-formated matrix with splits\nof trees coded as characters.\
    \ Intended for\nmatrix representation parsimony."
  type: boolean?
  inputBinding:
    prefix: --matrix_representation
- id: in_mid_point_root
  doc: root the tree at the mid point.
  type: boolean?
  inputBinding:
    prefix: --mid_point_root
- id: in_multiply_branch_lengths
  doc: "/       multiply each branch in the tree with the\n-u [value]            \
    \         given value, e.g. 3.5 (default 1.0)."
  type: boolean?
  inputBinding:
    prefix: --multiply_branch_lengths
- id: in_multiply_branch_lengths_clade
  doc: "/ multiply branches in clades defined by the\n-V [value:taxon_string]    \
    \    most recent common ancestor of comma separated\ntaxa. Separate clade with\
    \ colon E.g. -V 3:\nTaxon_1,Taxon_2:Taxon_3,Taxon_4."
  type: boolean?
  inputBinding:
    prefix: --multiply_branch_lengths_clade
- id: in_multiply_branch_lengths_until
  doc: "/ multiply branches in tree up until given\n-U [value:cut off]           \
    \  distance (cut off) from root with the given\nvalue (separated by colon), e.g.\
    \ 2:40 (default\n1.0:0.0)."
  type: boolean?
  inputBinding:
    prefix: --multiply_branch_lengths_until
- id: in_n_supported
  doc: "[value]             get the number of nodes with higher support\nthan given\
    \ value. Should be followed by value,\ne.g. --n_supported 70.0."
  type: boolean?
  inputBinding:
    prefix: --n_supported
- id: in_nni
  doc: "[node/all]                  perform nearest neighbor interchange. If a\ninteger\
    \ is given as extra argument the\ninterchange will be done on that branch (use\n\
    --get_branch_numbers to get branch numbers).\nIf 0 or no extra argument is given\
    \ a branch\nwill be selected randomly. If 'all' is given\nNNI will be performed\
    \ for all branches, e.g.\n--nni 4, or --nni all."
  type: boolean?
  inputBinding:
    prefix: --nni
- id: in_no_branch_length
  doc: "do not print branch lengths. If there are no\nbranch lengths in input tree\
    \ the default is to\nprint zero length branches in the out tree.\nThis argument\
    \ override this and print no\nbranch lengths."
  type: boolean?
  inputBinding:
    prefix: --no_branch_length
- id: in_null_short_branches
  doc: '[value]     set branches with shorter than given value to 0'
  type: boolean?
  inputBinding:
    prefix: --null_short_branches
- id: in_number_of_tax_a
  doc: get the number of tips/taxa in the tree.
  type: boolean?
  inputBinding:
    prefix: --number_of_taxa
- id: in_out_group_root
  doc: "[taxa]         root using most recent common ancestor of given\ntaxa, e.g.\
    \ -o taxa1,taxa2."
  type: boolean?
  inputBinding:
    prefix: --outgroup_root
- id: in_output
  doc: "[newick/nexus]           give tree format for output, nexus (nex or x\nfor\
    \ short), newick (new or w for short), or\nsvg e.g. --output x. (default w). For\
    \ svg\nextra graphical commands can be given after a\ncolon (:). Each command\
    \ should be separated by\n&, and commands and arguments should be\nseparated by\
    \ colon. Possible commands are:\n'width' set width of figure; 'height' set\nhight\
    \ of figure; 'offset' set offset between\ntips and tip label; 'strokewidth' set\
    \ the\nwidth of the branches; 'fontsize' sets the\nsize of the font used; 'font'\
    \ sets which font\nto use; and 'tipcolor' sets the color of the\ntip labels given\
    \ in parenthesis directly\nbehind the color. 'width' and 'height' are\nmandatory\
    \ if you want to set any other\nparameter than tip color. E.g. --output 'svg:\n\
    width:300&height:400&tipcolor:red(taxon1,\ntaxon2,taxon3)green(taxon4)'."
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_patristic_distances
  doc: "[sep.] get the total patristic distance to all other\ntaxa in the tree for\
    \ each taxon, the separator\nbetween different taxa, and the separator\nbetween\
    \ taxon name and value can be specified\n(separated by colon) e.g. -p \",: | \"\
    \n(default is new line and space). A separator\nbetween output from different\
    \ trees can be\ngiven after another colon."
  type: boolean?
  inputBinding:
    prefix: --patristic_distances
- id: in_random_tree
  doc: "get a random topology (no branch lengths) with\ngiven number of taxa, e.g.\
    \ -r 20 (default 0).\nNumber of random trees can be given behind a\ncolon (:),\
    \ e.g. -r 20:100."
  type: boolean?
  inputBinding:
    prefix: --random_tree
- id: in_read_figtree_annotations
  doc: "will read annotations in FigTree/treeanotator\nformat (e.g. [&rate=1.0,height=3.0])."
  type: boolean?
  inputBinding:
    prefix: --read_figtree_annotations
- id: in_relaxed_out_group_root
  doc: "[taxa]    will root on the group defined as for\n--get_relaxed_outgroup."
  type: boolean?
  inputBinding:
    prefix: --relaxed_outgroup_root
- id: in_set_branch_lengths
  doc: "[value] set all branches in the tree to the given\nvalue, e.g. 0.5 (default\
    \ 1.0)."
  type: boolean?
  inputBinding:
    prefix: --set_branch_lengths
- id: in_split
  doc: "[method:criterion]        splits tree based on the longest branch\n(longest_branch/l)\
    \ or the mid point\n(mid_point/m) until a stop criterion set by\n--split_stop\
    \ is reached. Which derived tree to\nsplit in each iteration can be set after\
    \ :.\nEither the tree with the longest branch (l;\ndefault for longest_branch\
    \ split) or the tree\nwith most tips (n; default for mid_point\nsplit)."
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_split_stop
  doc: "[stop_crit.:integer] sets criterion for when to stop splitting\ntrees, either\
    \ at a maximum number of trees\n(max_tree_number/t) or when all trees have\nfewer\
    \ than a certain number of tips\n(max_tree_size/s). The number should be given\n\
    togather with the specific criterion after :."
  type: boolean?
  inputBinding:
    prefix: --split_stop
- id: in_rooted
  doc: "sets if the tree should be considered as\nrooted or not (only matters when\
    \ splitting\ntrees)."
  type: boolean?
  inputBinding:
    prefix: --rooted
- id: in_sum_branch_length
  doc: "get the sum of the branch lengths in the tree\n(including root branch if length\
    \ for this is\ngiven)."
  type: boolean?
  inputBinding:
    prefix: --sum_branch_length
- id: in_verbose
  doc: get additional output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- treebender
