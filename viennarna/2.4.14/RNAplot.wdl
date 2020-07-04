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
    String? output_format
    String? pre
    String? post
    Boolean? auto_id
    String? id_prefix
    String? input_zero
    String? input_one
  }
  command <<<
    RNAplot \
      ~{input_zero} \
      ~{input_one} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--jobs" false="" jobs} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{true="--msa" false="" msa} \
      ~{true="--mis" false="" mis} \
      ~{true="--covar" false="" co_var} \
      ~{true="--aln" false="" aln} \
      ~{if defined(layout_type) then ("--layout-type " +  '"' + layout_type + '"') else ""} \
      ~{true="--noOptimization" false="" no_optimization} \
      ~{true="--ignoreExteriorIntersections" false="" ignore_exterior_intersections} \
      ~{true="--ignoreAncestorIntersections" false="" ignore_ancestor_intersections} \
      ~{true="--ignoreSiblingIntersections" false="" ignore_sibling_intersections} \
      ~{true="--allowFlipping" false="" allow_flipping} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(pre) then ("--pre " +  '"' + pre + '"') else ""} \
      ~{if defined(post) then ("--post " +  '"' + post + '"') else ""} \
      ~{true="--auto-id" false="" auto_id} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    jobs: "[=number]           Split batch input into jobs and start processing in parallel using multiple threads. A value of 0 indicates to use as many parallel threads as computation cores are available. (default=`0')"
    in_file: "Read a file instead of reading from stdin"
    msa: "Input is multiple sequence alignment in Stockholm 1.0 format (default=off)"
    mis: "Output \"most informative sequence\" instead of simple consensus: For each column of the alignment output the set of nucleotides with frequency greater than average in IUPAC notation. (default=off)"
    co_var: "Annotate covariance of base pairs in consensus structure (default=off)"
    aln: "Produce a colored and structure annotated alignment in PostScript format in the file \"aln.ps\" in the current directory. (default=off)"
    layout_type: "Choose the layout algorithm. (default=`1')"
    no_optimization: "Disable the drawing space optimization of RNApuzzler  (default=off)"
    ignore_exterior_intersections: "Ignore intersections with the exterior loop within the RNA-tree.  (default=off)"
    ignore_ancestor_intersections: "Ignore ancestor intersections within the RNA-tree.  (default=off)"
    ignore_sibling_intersections: "Ignore sibling intersections within the RNA-tree  (default=off)"
    allow_flipping: "Allow flipping of exterior loop branches to resolve exterior branch intersections. (default=off)"
    output_format: "|gml|xrna|svg Specify output format. Available formats are: PostScript (ps), Graph Meta Language (gml), Scalable Vector Graphics (svg), and XRNA save file (xrna). Output filenames will end in \".ps\" \".gml\" \".svg\" \".ss\", respectively. (default=`ps')"
    pre: "Add annotation macros to postscript file, and add the postscript code in \"string\" just before the code to draw the structure. This is an easy way to add annotation."
    post: "Same as --pre but in contrast to adding the annotation macros. E.g to mark position 15 with circle use --post \"15 cmark\""
    auto_id: "Automatically generate an ID for each sequence. (default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in output file names) (default=`sequence')"
    input_zero: ""
    input_one: ""
  }
}