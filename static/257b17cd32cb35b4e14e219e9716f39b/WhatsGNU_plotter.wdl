version 1.0

task WhatsGNUPlotter.py {
  input {
    String? heat_map
    String? list_genes
    String? fast_a
    Boolean? output_blastp
    String? strains_order
    Boolean? rarity
    String? rarity_color
    String? fs
    String? heat_map_color
    String? masked_color
    String? font_size
    String? title
    String? metadata_barplot
    Boolean? all_metadata
    String? select_metadata
    Boolean? histogram
    String? histogram_color
    String? histogram_bins
    String? novelconserved__novelconserved
    String? strains_tag_volcano
    String? cut_off_volcano
    String? cc
    String prefix_name
    Directory directory_path
  }
  command <<<
    WhatsGNU_plotter.py \
      ~{prefix_name} \
      ~{directory_path} \
      ~{if defined(heat_map) then ("--heatmap " +  '"' + heat_map + '"') else ""} \
      ~{if defined(list_genes) then ("--list_genes " +  '"' + list_genes + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--output_blastp" false="" output_blastp} \
      ~{if defined(strains_order) then ("--strains_order " +  '"' + strains_order + '"') else ""} \
      ~{true="--rarity" false="" rarity} \
      ~{if defined(rarity_color) then ("--rarity_color " +  '"' + rarity_color + '"') else ""} \
      ~{if defined(fs) then ("-fs " +  '"' + fs + '"') else ""} \
      ~{if defined(heat_map_color) then ("--heatmap_color " +  '"' + heat_map_color + '"') else ""} \
      ~{if defined(masked_color) then ("--masked_color " +  '"' + masked_color + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(metadata_barplot) then ("--metadata_barplot " +  '"' + metadata_barplot + '"') else ""} \
      ~{true="--all_metadata" false="" all_metadata} \
      ~{if defined(select_metadata) then ("--select_metadata " +  '"' + select_metadata + '"') else ""} \
      ~{true="--histogram" false="" histogram} \
      ~{if defined(histogram_color) then ("--histogram_color " +  '"' + histogram_color + '"') else ""} \
      ~{if defined(histogram_bins) then ("--histogram_bins " +  '"' + histogram_bins + '"') else ""} \
      ~{if defined(novelconserved__novelconserved) then ("-p " +  '"' + novelconserved__novelconserved + '"') else ""} \
      ~{if defined(strains_tag_volcano) then ("--strains_tag_volcano " +  '"' + strains_tag_volcano + '"') else ""} \
      ~{if defined(cut_off_volcano) then ("--cutoff_volcano " +  '"' + cut_off_volcano + '"') else ""} \
      ~{if defined(cc) then ("-cc " +  '"' + cc + '"') else ""}
  >>>
  parameter_meta {
    heat_map: "heatmap of GNU scores for orthologous genes in multiple isolates"
    list_genes: "a txt file of ortholog group names from one of the WhatsGNU reports for heatmap"
    fast_a: "a FASTA file of sequences for the proteins of interest for heatmap or metadata barplot"
    output_blastp: "get the output report of blastp run, it has to be used with -q"
    strains_order: "list of strains order for heatmap"
    rarity: "Annotate heatmap cells with OVRI(default: off)"
    rarity_color: "OVRI data text color in the heatmap"
    fs: "FIGURE_SIZE, --figure_size FIGURE_SIZE FIGURE_SIZE heatmap width and height in inches w,h, respectively"
    heat_map_color: "heatmap color"
    masked_color: "missing data color in heatmap"
    font_size: "heatmap font size"
    title: "title for the heatmap [Default:WhatsGNU heatmap]"
    metadata_barplot: "Metadata percentage distribution for proteins in a FASTA file"
    all_metadata: "all metadata"
    select_metadata: "select some metadata"
    histogram: "histogram of GNU scores"
    histogram_color: "histogram color"
    histogram_bins: "number of bins for the histograms [10]"
    novelconserved__novelconserved: "NOVEL_CONSERVED, --novel_conserved NOVEL_CONSERVED NOVEL_CONSERVED upper and lower GNU score limits for novel and conserved proteins novel_GNU_upper_limit, conserved_GNU_lower_limit, respectively [Default 10, 100]"
    strains_tag_volcano: "a csv file of the strains of the two groups to be compared with (case/control) tag"
    cut_off_volcano: "a percentage of isolates a protein must be in [Default: 100]"
    cc: "CASE_CONTROL_NAME, --case_control_name CASE_CONTROL_NAME CASE_CONTROL_NAME case and control groups' names [Default: case control]"
    prefix_name: "prefix name for the the output folder and heatmap/volcano output files"
    directory_path: "path to directory of WhatsGNU reports"
  }
}