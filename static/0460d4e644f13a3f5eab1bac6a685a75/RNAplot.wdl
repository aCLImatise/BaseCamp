version 1.0

task RNAplot {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? jobs
    File? in_file
    Boolean? msa
    Boolean? mis
    Boolean? co_var
    Boolean? aln
    Int? layout_type
    Boolean? no_optimization
    Boolean? ignore_exterior_intersections
    Boolean? ignore_ancestor_intersections
    Boolean? ignore_sibling_intersections
    Boolean? allow_flipping
    File? output_format
    File? pre
    Int? post
    Boolean? auto_id
    File? id_prefix
    String structure
    String rna_puzzler
  }
  command <<<
    RNAplot \
      ~{structure} \
      ~{rna_puzzler} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if (msa) then "--msa" else ""} \
      ~{if (mis) then "--mis" else ""} \
      ~{if (co_var) then "--covar" else ""} \
      ~{if (aln) then "--aln" else ""} \
      ~{if defined(layout_type) then ("--layout-type " +  '"' + layout_type + '"') else ""} \
      ~{if (no_optimization) then "--noOptimization" else ""} \
      ~{if (ignore_exterior_intersections) then "--ignoreExteriorIntersections" else ""} \
      ~{if (ignore_ancestor_intersections) then "--ignoreAncestorIntersections" else ""} \
      ~{if (ignore_sibling_intersections) then "--ignoreSiblingIntersections" else ""} \
      ~{if (allow_flipping) then "--allowFlipping" else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(pre) then ("--pre " +  '"' + pre + '"') else ""} \
      ~{if defined(post) then ("--post " +  '"' + post + '"') else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    jobs: "[=number]           Split batch input into jobs and start\\nprocessing in parallel using multiple\\nthreads. A value of 0 indicates to use as\\nmany parallel threads as computation cores\\nare available.\\n(default=`0')"
    in_file: "Read a file instead of reading from stdin"
    msa: "Input is multiple sequence alignment in\\nStockholm 1.0 format\\n(default=off)"
    mis: "Output \\\"most informative sequence\\\" instead of\\nsimple consensus: For each column of the\\nalignment output the set of nucleotides with\\nfrequency greater than average in IUPAC\\nnotation.\\n(default=off)"
    co_var: "Annotate covariance of base pairs in consensus"
    aln: "Produce a colored and structure annotated\\nalignment in PostScript format in the file\\n\\\"aln.ps\\\" in the current directory.\\n(default=off)"
    layout_type: "Choose the layout algorithm.\\n(default=`1')"
    no_optimization: "Disable the drawing space optimization of"
    ignore_exterior_intersections: "Ignore intersections with the exterior loop\\nwithin the RNA-tree.  (default=off)"
    ignore_ancestor_intersections: "Ignore ancestor intersections within the\\nRNA-tree.  (default=off)"
    ignore_sibling_intersections: "Ignore sibling intersections within the\\nRNA-tree  (default=off)"
    allow_flipping: "Allow flipping of exterior loop branches to\\nresolve exterior branch intersections.\\n(default=off)"
    output_format: "|gml|xrna|svg\\nSpecify output format. Available formats are:\\nPostScript (ps), Graph Meta Language (gml),\\nScalable Vector Graphics (svg), and XRNA save\\nfile (xrna). Output filenames will end in\\n\\\".ps\\\" \\\".gml\\\" \\\".svg\\\" \\\".ss\\\",\\nrespectively.\\n(default=`ps')"
    pre: "Add annotation macros to postscript file, and\\nadd the postscript code in \\\"string\\\" just\\nbefore the code to draw the structure. This\\nis an easy way to add annotation."
    post: "Same as --pre but in contrast to adding the\\nannotation macros. E.g to mark position 15\\nwith circle use --post \\\"15 cmark\\\""
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names)\\n(default=`sequence')"
    structure: "(default=off)"
    rna_puzzler: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_output_format = "${in_output_format}"
    File out_id_prefix = "${in_id_prefix}"
  }
}