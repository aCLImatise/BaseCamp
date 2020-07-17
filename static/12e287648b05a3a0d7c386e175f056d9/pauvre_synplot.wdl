version 1.0

task PauvreSynplot {
  input {
    Array[String] gff_paths
    Array[String] gff_labels
    Boolean? no_timestamp
    Boolean? optimum_order
    String? output_basename
    Array[String] ratio
    Boolean? sandwich
    Boolean? start_with_aligned_genes
    Boolean? stop_codons
    Boolean? transparent
    Boolean? q
    String? aln_dir
    String? center_on
  }
  command <<<
    pauvre synplot \
      ~{if defined(gff_paths) then ("--gff_paths " +  '"' + gff_paths + '"') else ""} \
      ~{if defined(gff_labels) then ("--gff_labels " +  '"' + gff_labels + '"') else ""} \
      ~{true="--no_timestamp" false="" no_timestamp} \
      ~{true="--optimum_order" false="" optimum_order} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{true="--sandwich" false="" sandwich} \
      ~{true="--start_with_aligned_genes" false="" start_with_aligned_genes} \
      ~{true="--stop_codons" false="" stop_codons} \
      ~{true="--transparent" false="" transparent} \
      ~{true="-q" false="" q} \
      ~{if defined(aln_dir) then ("--aln_dir " +  '"' + aln_dir + '"') else ""} \
      ~{if defined(center_on) then ("--center_on " +  '"' + center_on + '"') else ""}
  >>>
  parameter_meta {
    gff_paths: "The input filepath. for the gff annotation to plot. Individual filepaths separated by spaces. For example, --gff_paths sp1.gff sp2.gff sp3.gff"
    gff_labels: "In case the gff names and sequence names don't match, change the labels that will appear over the text."
    no_timestamp: "Turn off time stamps in the filename output."
    optimum_order: "If selected, this doesn't plot the optimum arrangement of things as they are input into gff_paths. Instead, it uses the first gff file as the top-most sequence in the plot, and reorganizes the remaining gff files to minimize the number of intersections."
    output_basename: "Specify a base name for the output file(s). The input file base name is the default."
    ratio: "Enter the dimensions (arbitrary units) to plot the figure. For example a figure that is seven times wider than tall is: --ratio 7 1"
    sandwich: "Put an additional copy of the first gff file on the bottom of the plot for comparison."
    start_with_aligned_genes: "Minimizes the number of intersections but only selects combos where the first gene in each sequence is aligned."
    stop_codons: "Performs some internal corrections if the gff annotation includes the stop codons in the coding sequences."
    transparent: "Specify this option if you DON'T want a transparent background. Default is on."
    q: ""
    aln_dir: ""
    center_on: ""
  }
}