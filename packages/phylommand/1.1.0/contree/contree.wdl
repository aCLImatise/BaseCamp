version 1.0

task Contree {
  input {
    Boolean? add_to_support
    Boolean? calculate_support
    Boolean? compare
    Boolean? database
    Boolean? decisiveness
    Boolean? iterations
    Boolean? file
    Boolean? format
    Boolean? html
    Boolean? non_shared_tips
    Boolean? give_tree_format
    Boolean? robinson_foulds
    Boolean? rooted
    Boolean? verbose
    String? arguments
    File file_dot_trees
  }
  command <<<
    contree \
      ~{arguments} \
      ~{file_dot_trees} \
      ~{if (add_to_support) then "--add_to_support" else ""} \
      ~{if (calculate_support) then "--calculate_support" else ""} \
      ~{if (compare) then "--compare" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (decisiveness) then "--decisiveness" else ""} \
      ~{if (iterations) then "--iterations" else ""} \
      ~{if (file) then "--file" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (non_shared_tips) then "--non_shared_tips" else ""} \
      ~{if (give_tree_format) then "--output" else ""} \
      ~{if (robinson_foulds) then "--robinson_foulds" else ""} \
      ~{if (rooted) then "--rooted" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    add_to_support: "/ -a           add one to the value of the internal node for\\neach tree that that split is present in."
    calculate_support: "/ -s        same as --add_to_support but divide the number\\nby number of trees compared against."
    compare: "/ -c [value]          output conflicting splits where at least one\\nbranch support the conflict with more than given\\nsupport, e.g. -c 0.7."
    database: "/ -d [file]          give a second file of trees to compare against\\ninstead of comparing within the ordinary input.\\nIf - is given input will be taken from standard\\nin instead of file, e.g. -d -. In that case the\\ninput compared to must  be given in a file (by\\n-f or as last argument)."
    decisiveness: "/ -D [genes]     calculates proportion of random trees for which\\ngiven gene sampling is decisive and the mean\\nproportion of branches that are distinguished.\\n(Sanderson et al. 2010, BMC Evol. Biol. 19:\\n155). The genes for each taxon are given as a\\ncomma (,) separated string, the genes for\\ndifferent taxon are separated by a bar (|). E.g\\n-D 'ITS,RPB2|ITS|ITS,RPB2|RPB2|RPB2|ITS', or in\\na file (given by -f or as last argument) with a\\ncomma separated string with the genes for each\\ntaxa on a separate row. No taxon names, trees,\\nor sequences are needed."
    iterations: "/ -i [number]      give numbers of iterations to do when\\ncalculating decisiveness, e.g. -i 1000."
    file: "/ -f [file]              give file name for trees, or decisiveness, e.g.\\n-f file.tree."
    format: "[newick/nexus]         give format of input, e.g. --format nexus. If no\\nformat is given and the input is a file contree\\nwill try to guess the format, if it is through\\nstandard in it will assume newick format. A\\nseparate file format can be given for the\\ndatabase file after a ',', e.g. --format\\nnewick,nexus. If only one format is given, it\\nwill be used for both tree files/inputs."
    html: "give output as tree in html (svg) format with\\nconflicting tips coloured green and red when\\ndoing --compare."
    non_shared_tips: "/ -t          print tip names not present in the other tree."
    give_tree_format: "[newick/nexus]         give tree format for output, nexus (nex or x for\\nshort) or newick (new or w for short), e.g\\n--output x. (default w)."
    robinson_foulds: "/ -r          compute Robinson-Foulds metric between trees."
    rooted: "/ -R                   treat trees as rooted for --add_to_support and\\n--calculate_support."
    verbose: "/ -v                  get additional output."
    arguments: ""
    file_dot_trees: ""
  }
  output {
    File out_stdout = stdout()
  }
}