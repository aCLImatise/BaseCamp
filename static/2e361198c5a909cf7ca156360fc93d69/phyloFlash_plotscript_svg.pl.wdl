version 1.0

task PhyloFlashPlotscriptSvgpl {
  input {
    File? tree
    File? tree_fast_a
    File? assem_cov
    Int? un_assem_count
    File? hist
    File? bar
    File? pie
    File? pipe
    Boolean? title
    Int? height
    Boolean? color
    Int? breakpoints
    Boolean? decimal_comma
    Boolean? man
  }
  command <<<
    phyloFlash_plotscript_svg_pl \
      ~{if defined(tree) then ("-tree " +  '"' + tree + '"') else ""} \
      ~{if defined(tree_fast_a) then ("-treefasta " +  '"' + tree_fast_a + '"') else ""} \
      ~{if defined(assem_cov) then ("-assemcov " +  '"' + assem_cov + '"') else ""} \
      ~{if defined(un_assem_count) then ("-unassemcount " +  '"' + un_assem_count + '"') else ""} \
      ~{if defined(hist) then ("-hist " +  '"' + hist + '"') else ""} \
      ~{if defined(bar) then ("-bar " +  '"' + bar + '"') else ""} \
      ~{if defined(pie) then ("-pie " +  '"' + pie + '"') else ""} \
      ~{if defined(pipe) then ("-pipe " +  '"' + pipe + '"') else ""} \
      ~{if (title) then "-title" else ""} \
      ~{if defined(height) then ("-height " +  '"' + height + '"') else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if defined(breakpoints) then ("-breakpoints " +  '"' + breakpoints + '"') else ""} \
      ~{if (decimal_comma) then "-decimalcomma" else ""} \
      ~{if (man) then "-man" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyloflash:3.4--0"
  }
  parameter_meta {
    tree: "Phylogenetic tree plot from Newick-formatted tree. Does\\nnot support node or branch labels, branch lengths\\nrequired. Tree is oriented with root on left and leaf\\nlabels on right. Height of plot scales with number of\\nleaves.\\nCan be modified with -treefasta, -assemcov, and\\n-unassemcount"
    tree_fast_a: "Original Fasta file used to produce the tree, if the tree\\nis a guide tree from MAFFT aligner. This is used to\\nrelabel the text labels in the SVG with the original\\ntext, because MAFFT automatically replaces spaces and\\nother punctuation with underscores, and truncates the\\nnames."
    assem_cov: "CSV file containing coverage stats of assembled SSU\\nsequences, from phyloFlash output, for drawing bubbles\\nrepresenting read coverage per assembled sequence on the\\ntree.\\nWhen supplied, beneath the node for each leaf\\nrepresenting an assembled SSU sequence will be a circle\\nwhose area represents the abundance of that sequence\\n(i.e. number of reads mapping to it in the re-mapping\\nstep) in the read library."
    un_assem_count: "Number of reads that are not mapping to any of the\\nassembled SSU sequences. This is to draw a bubble\\nrepresenting coverage of unassembled reads, when coverage\\nof assembled sequences is also supplied via -assemcov\\nparameter."
    hist: "Histogram plot from TAB-separated histogram output file,\\ne.g. those produced by BBmap. Column 1: bin values,\\ncolumn 2: counts/frequencies. The counts must already be\\nbinned into counts or frequencies! The counts can be\\nre-binned into new bins for plotting, but the user is\\nresponsible for making sure that the number of new bins <\\nnumber of original bins."
    bar: "Interactive bar plot from CSV file. Column 1: label,\\ncolumn 2: counts. The text labels are adjacent to the\\nbars and their size and opacity are scaled to the bar\\nheight to avoid overlapping text labels. However on\\nmouseover (when viewed in web browser) the box will be\\nhighlighted and the corresponding text label will enlarge\\nto legible size."
    pie: "Pie chart from CSV file. Column 1: Label, column 2:\\ncounts/percentage/ratio. Will automatically take total of\\nthe numbers provided. I.e. if using percentages, ensure\\nthat they add up to 100%."
    pipe: "TYPE\\nUse \\\"pipe\\\" mode. Input is read from STDIN and written to\\nSTDOUT. Use this option to specify type of plot to\\nproduce: \\\"tree\\\", \\\"hist\\\", \\\"bar\\\", or \\\"pie\\\". Naturally this\\ncan only read and write one file at a time."
    title: "=\\\"STRING\\\"\\nOptional title for plot. Enclose string in quotation\\nmarks if title has spaces. Default: (empty)"
    height: "Optional width and height of plot in pixels. Defaults:\\nBuilt-in defaults for each plot type."
    color: "=\\\"STRING\\\"\\nOptional fill color for plot. Currently implemented only\\nfor histogram. Default: Built-in defaults for each plot\\ntype"
    breakpoints: "Specify number of breakpoints in histogram. Default:\\nSturges algorithm to calculate optimal breakpoints"
    decimal_comma: "Use comma as decimal separator (only used for histogram\\ninput). BBMap is locale- aware and uses decimal comma in\\ncertain locales (e.g. Germany and France). However, Perl\\ndoes not unless explicitly requested. This option will\\nreplace decimal commas with decimal periods in histogram\\ninput files only."
    man: "Manual page (identical to this help message)"
  }
  output {
    File out_stdout = stdout()
  }
}