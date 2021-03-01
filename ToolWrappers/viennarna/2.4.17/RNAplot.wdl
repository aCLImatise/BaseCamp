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
    File? pre
    Int? post
    Boolean? auto_id
    File? id_prefix
    String structure_dot
  }
  command <<<
    RNAplot \
      ~{structure_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if (msa) then "--msa" else ""} \
      ~{if (mis) then "--mis" else ""} \
      ~{if (co_var) then "--covar" else ""} \
      ~{if (aln) then "--aln" else ""} \
      ~{if defined(layout_type) then ("--layout-type " +  '"' + layout_type + '"') else ""} \
      ~{if defined(pre) then ("--pre " +  '"' + pre + '"') else ""} \
      ~{if defined(post) then ("--post " +  '"' + post + '"') else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    jobs: "[=number]           Split batch input into jobs and start\\nprocessing in parallel using multiple\\nthreads.  (default=`0')"
    in_file: "Read a file instead of reading from stdin."
    msa: "Input is multiple sequence alignment in\\nStockholm 1.0 format.  (default=off)"
    mis: "Output \\\"most informative sequence\\\" instead of\\nsimple consensus  (default=off)"
    co_var: "Annotate covariance of base pairs in consensus"
    aln: "Produce a colored and structure annotated\\nalignment in PostScript format in the file\\n\\\"aln.ps\\\" in the current directory.\\n(default=off)"
    layout_type: "Choose the plotting layout algorithm.\\n(default=`1')"
    pre: "Add annotation macros to postscript file, and\\nadd the postscript code in \\\"string\\\" just\\nbefore the code to draw the structure. This\\nis an easy way to add annotation."
    post: "Same as --pre but in contrast to adding the\\nannotation macros. E.g to mark position 15\\nwith circle use --post \\\"15 cmark\\\"."
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names).  (default=`sequence')"
    structure_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_id_prefix = "${in_id_prefix}"
  }
}