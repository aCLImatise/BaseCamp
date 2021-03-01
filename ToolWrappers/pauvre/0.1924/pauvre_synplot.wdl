version 1.0

task PauvreSynplot {
  input {
    Boolean? quiet
    Directory? aln_dir
    Int? center_on
    Array[String] gff_paths
    Array[String] gff_labels
    File? no_timestamp
    Boolean? optimum_order
    File? output_basename
    Array[String] ratio
    Boolean? sandwich
    Boolean? start_with_aligned_genes
    Boolean? stop_codons
    Boolean? transparent
    String contained_dot
    String higher
  }
  command <<<
    pauvre synplot \
      ~{contained_dot} \
      ~{higher} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(aln_dir) then ("--aln_dir " +  '"' + aln_dir + '"') else ""} \
      ~{if defined(center_on) then ("--center_on " +  '"' + center_on + '"') else ""} \
      ~{if defined(gff_paths) then ("--gff_paths " +  '"' + gff_paths + '"') else ""} \
      ~{if defined(gff_labels) then ("--gff_labels " +  '"' + gff_labels + '"') else ""} \
      ~{if (no_timestamp) then "--no_timestamp" else ""} \
      ~{if (optimum_order) then "--optimum_order" else ""} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if (sandwich) then "--sandwich" else ""} \
      ~{if (start_with_aligned_genes) then "--start_with_aligned_genes" else ""} \
      ~{if (stop_codons) then "--stop_codons" else ""} \
      ~{if (transparent) then "--transparent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    aln_dir: "The directory where all the fasta alignments are"
    center_on: "Change the dpi from the default 600 if you need it"
    gff_paths: "The input filepath. for the gff annotation to plot.\\nIndividual filepaths separated by spaces. For example,\\n--gff_paths sp1.gff sp2.gff sp3.gff"
    gff_labels: "In case the gff names and sequence names don't match,\\nchange the labels that will appear over the text."
    no_timestamp: "Turn off time stamps in the filename output."
    optimum_order: "If selected, this doesn't plot the optimum arrangement\\nof things as they are input into gff_paths. Instead,\\nit uses the first gff file as the top-most sequence in\\nthe plot, and reorganizes the remaining gff files to\\nminimize the number of intersections."
    output_basename: "Specify a base name for the output file(s). The input\\nfile base name is the default."
    ratio: "Enter the dimensions (arbitrary units) to plot the\\nfigure. For example a figure that is seven times wider\\nthan tall is: --ratio 7 1"
    sandwich: "Put an additional copy of the first gff file on the\\nbottom of the plot for comparison."
    start_with_aligned_genes: "Minimizes the number of intersections but only selects\\ncombos where the first gene in each sequence is\\naligned."
    stop_codons: "Performs some internal corrections if the gff\\nannotation includes the stop codons in the coding\\nsequences."
    transparent: "Specify this option if you DON'T want a transparent\\nbackground. Default is on.\\n"
    contained_dot: "--center_on CENTER_ON"
    higher: "--fileform {png,pdf,eps,jpeg,jpg,pdf,pgf,ps,raw,rgba,svg,svgz,tif,tiff} [{png,pdf,eps,jpeg,jpg,pdf,pgf,ps,raw,rgba,svg,svgz,tif,tiff} ...]"
  }
  output {
    File out_stdout = stdout()
    File out_no_timestamp = "${in_no_timestamp}"
  }
}