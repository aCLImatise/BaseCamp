version 1.0

task WhatsGNUPlotterpy {
  input {
    String? heat_map
    File? list_genes
    File? fast_a
    Boolean? output_blastp
    String? strains_order
    Boolean? rarity
    String? rarity_color
    Int? fs
    String? heat_map_color
    String? masked_color
    Int? font_size
    String? title
    String? metadata_barplot
    Boolean? all_metadata
    String? select_metadata
    Boolean? histogram
    String? histogram_color
    Int? histogram_bins
    Int? novelconserved__novelconserved
    File? strains_tag_volcano
    Int? cut_off_volcano
    String? cc
    String prefix_name
    String directory_path
  }
  command <<<
    WhatsGNU_plotter_py \
      ~{prefix_name} \
      ~{directory_path} \
      ~{if defined(heat_map) then ("--heatmap " +  '"' + heat_map + '"') else ""} \
      ~{if defined(list_genes) then ("--list_genes " +  '"' + list_genes + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (output_blastp) then "--output_blastp" else ""} \
      ~{if defined(strains_order) then ("--strains_order " +  '"' + strains_order + '"') else ""} \
      ~{if (rarity) then "--rarity" else ""} \
      ~{if defined(rarity_color) then ("--rarity_color " +  '"' + rarity_color + '"') else ""} \
      ~{if defined(fs) then ("-fs " +  '"' + fs + '"') else ""} \
      ~{if defined(heat_map_color) then ("--heatmap_color " +  '"' + heat_map_color + '"') else ""} \
      ~{if defined(masked_color) then ("--masked_color " +  '"' + masked_color + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(metadata_barplot) then ("--metadata_barplot " +  '"' + metadata_barplot + '"') else ""} \
      ~{if (all_metadata) then "--all_metadata" else ""} \
      ~{if defined(select_metadata) then ("--select_metadata " +  '"' + select_metadata + '"') else ""} \
      ~{if (histogram) then "--histogram" else ""} \
      ~{if defined(histogram_color) then ("--histogram_color " +  '"' + histogram_color + '"') else ""} \
      ~{if defined(histogram_bins) then ("--histogram_bins " +  '"' + histogram_bins + '"') else ""} \
      ~{if defined(novelconserved__novelconserved) then ("-p " +  '"' + novelconserved__novelconserved + '"') else ""} \
      ~{if defined(strains_tag_volcano) then ("--strains_tag_volcano " +  '"' + strains_tag_volcano + '"') else ""} \
      ~{if defined(cut_off_volcano) then ("--cutoff_volcano " +  '"' + cut_off_volcano + '"') else ""} \
      ~{if defined(cc) then ("-cc " +  '"' + cc + '"') else ""}
  >>>
  parameter_meta {
    heat_map: "heatmap of GNU scores for orthologous genes in\\nmultiple isolates"
    list_genes: "a txt file of ortholog group names from one of the\\nWhatsGNU reports for heatmap"
    fast_a: "a FASTA file of sequences for the proteins of interest\\nfor heatmap or metadata barplot"
    output_blastp: "get the output report of blastp run, it has to be used\\nwith -q"
    strains_order: "list of strains order for heatmap"
    rarity: "Annotate heatmap cells with OVRI(default: off)"
    rarity_color: "OVRI data text color in the heatmap"
    fs: "FIGURE_SIZE, --figure_size FIGURE_SIZE FIGURE_SIZE\\nheatmap width and height in inches w,h, respectively"
    heat_map_color: "heatmap color"
    masked_color: "missing data color in heatmap"
    font_size: "heatmap font size"
    title: "title for the heatmap [Default:WhatsGNU heatmap]"
    metadata_barplot: "Metadata percentage distribution for proteins in a\\nFASTA file"
    all_metadata: "all metadata"
    select_metadata: "select some metadata"
    histogram: "histogram of GNU scores"
    histogram_color: "histogram color"
    histogram_bins: "number of bins for the histograms [10]"
    novelconserved__novelconserved: "NOVEL_CONSERVED, --novel_conserved NOVEL_CONSERVED NOVEL_CONSERVED\\nupper and lower GNU score limits for novel and\\nconserved proteins novel_GNU_upper_limit,\\nconserved_GNU_lower_limit, respectively [Default 10,\\n100]"
    strains_tag_volcano: "a csv file of the strains of the two groups to be\\ncompared with (case/control) tag"
    cut_off_volcano: "a percentage of isolates a protein must be in\\n[Default: 100]"
    cc: "CASE_CONTROL_NAME, --case_control_name CASE_CONTROL_NAME CASE_CONTROL_NAME\\ncase and control groups' names [Default: case control]\\n"
    prefix_name: "prefix name for the the output folder and\\nheatmap/volcano output files"
    directory_path: "path to directory of WhatsGNU reports"
  }
  output {
    File out_stdout = stdout()
  }
}