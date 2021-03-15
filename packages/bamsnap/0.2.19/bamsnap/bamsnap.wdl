version 1.0

task Bamsnap {
  input {
    Boolean? bam
    File? bam_list
    Boolean? title
    Boolean? no_title
    Int? title_font_size
    Boolean? pos
    File? vcf
    File? bed
    File? out
    File? image_type
    File? conf
    File? ref
    Boolean? ref_index_rebuild
    Int? ref_version
    Int? margin
    Boolean? save_image_only
    Directory? image_dir_name
    Boolean? zip_out
    String? separator_height
    Int? process
    Boolean? draw
    Boolean? bam_plot
    Int? width
    String? height
    String? bgcolor
    Int? plot_margin_top
    Int? plot_margin_bottom
    Int? plot_margin_left
    Int? plot_margin_right
    Boolean? border
    Int? grid
    String? read_thickness
    String? read_gap_height
    Int? read_gap_width
    String? read_bgcolor
    String? read_color
    String? read_pos_color
    String? read_neg_color
    String? read_color_deletion
    String? read_color_inversion
    Int? insert_size_del_threshold
    Int? insert_size_ins_threshold
    String? read_group
    String? read_color_by
    Int? read_color_inter_chrom_chr_one
    Int? read_color_inter_chrom_chr_two
    Int? read_color_inter_chrom_chr_three
    Int? read_color_inter_chrom_chr_four
    Int? read_color_inter_chrom_chr_five
    Int? read_color_inter_chrom_chr_six
    Int? read_color_inter_chrom_chr_seven
    Int? read_color_inter_chrom_chr_eight
    Int? read_color_inter_chrom_chr_nine
    Int? read_color_inter_chrom_chr_one_zero
    Int? read_color_inter_chrom_chr_one_one
    Int? read_color_inter_chrom_chr_one_two
    Int? read_color_inter_chrom_chr_one_three
    Int? read_color_inter_chrom_chr_one_four
    Int? read_color_inter_chrom_chr_one_five
    Int? read_color_inter_chrom_chr_one_six
    Int? read_color_inter_chrom_chr_one_seven
    Int? read_color_inter_chrom_chr_one_eight
    Int? read_color_inter_chrom_chr_one_nine
    Int? read_color_inter_chrom_chr_two_zero
    Int? read_color_inter_chrom_chr_two_one
    Int? read_color_inter_chrom_chr_two_two
    String? read_color_inter_chrom_chrx
    String? read_color_inter_chrom_chry
    String? read_color_inter_chrom_other
    Boolean? show_soft_clipped
    Boolean? show_hard_clipped
    Boolean? show_clipped
    Boolean? center_line
    Boolean? no_target_line
    Int? base_font_size
    String? base_height
    Int? base_margin_top
    Int? base_margin_bottom
    String? coverage_height
    Int? coverage_font_size
    Float? coverage_vaf
    String? coverage_color
    String? coverage_bgcolor
    String? heat_map_height
    String? heat_map_bgcolor
    String? gene_height
    Int? gene_font_size
    String? gene_pos_color
    String? gene_neg_color
    String? coordinates_height
    Int? coordinates_font_size
    String? coordinates_axis_loc
    String? coordinates_bgcolor
    String? coordinates_label_color
    Boolean? separated_bam
    Boolean? debug
    Boolean? silence
    String sub_command
  }
  command <<<
    bamsnap \
      ~{sub_command} \
      ~{if (bam) then "-bam" else ""} \
      ~{if defined(bam_list) then ("-bamlist " +  '"' + bam_list + '"') else ""} \
      ~{if (title) then "-title" else ""} \
      ~{if (no_title) then "-no_title" else ""} \
      ~{if defined(title_font_size) then ("-title_fontsize " +  '"' + title_font_size + '"') else ""} \
      ~{if (pos) then "-pos" else ""} \
      ~{if defined(vcf) then ("-vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(image_type) then ("-imagetype " +  '"' + image_type + '"') else ""} \
      ~{if defined(conf) then ("-conf " +  '"' + conf + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (ref_index_rebuild) then "-ref_index_rebuild" else ""} \
      ~{if defined(ref_version) then ("-refversion " +  '"' + ref_version + '"') else ""} \
      ~{if defined(margin) then ("-margin " +  '"' + margin + '"') else ""} \
      ~{if (save_image_only) then "-save_image_only" else ""} \
      ~{if defined(image_dir_name) then ("-image_dir_name " +  '"' + image_dir_name + '"') else ""} \
      ~{if (zip_out) then "-zipout" else ""} \
      ~{if defined(separator_height) then ("-separator_height " +  '"' + separator_height + '"') else ""} \
      ~{if defined(process) then ("-process " +  '"' + process + '"') else ""} \
      ~{if (draw) then "-draw" else ""} \
      ~{if (bam_plot) then "-bamplot" else ""} \
      ~{if defined(width) then ("-width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("-height " +  '"' + height + '"') else ""} \
      ~{if defined(bgcolor) then ("-bgcolor " +  '"' + bgcolor + '"') else ""} \
      ~{if defined(plot_margin_top) then ("-plot_margin_top " +  '"' + plot_margin_top + '"') else ""} \
      ~{if defined(plot_margin_bottom) then ("-plot_margin_bottom " +  '"' + plot_margin_bottom + '"') else ""} \
      ~{if defined(plot_margin_left) then ("-plot_margin_left " +  '"' + plot_margin_left + '"') else ""} \
      ~{if defined(plot_margin_right) then ("-plot_margin_right " +  '"' + plot_margin_right + '"') else ""} \
      ~{if (border) then "-border" else ""} \
      ~{if defined(grid) then ("-grid " +  '"' + grid + '"') else ""} \
      ~{if defined(read_thickness) then ("-read_thickness " +  '"' + read_thickness + '"') else ""} \
      ~{if defined(read_gap_height) then ("-read_gap_height " +  '"' + read_gap_height + '"') else ""} \
      ~{if defined(read_gap_width) then ("-read_gap_width " +  '"' + read_gap_width + '"') else ""} \
      ~{if defined(read_bgcolor) then ("-read_bgcolor " +  '"' + read_bgcolor + '"') else ""} \
      ~{if defined(read_color) then ("-read_color " +  '"' + read_color + '"') else ""} \
      ~{if defined(read_pos_color) then ("-read_pos_color " +  '"' + read_pos_color + '"') else ""} \
      ~{if defined(read_neg_color) then ("-read_neg_color " +  '"' + read_neg_color + '"') else ""} \
      ~{if defined(read_color_deletion) then ("-read_color_deletion " +  '"' + read_color_deletion + '"') else ""} \
      ~{if defined(read_color_inversion) then ("-read_color_inversion " +  '"' + read_color_inversion + '"') else ""} \
      ~{if defined(insert_size_del_threshold) then ("-insert_size_del_threshold " +  '"' + insert_size_del_threshold + '"') else ""} \
      ~{if defined(insert_size_ins_threshold) then ("-insert_size_ins_threshold " +  '"' + insert_size_ins_threshold + '"') else ""} \
      ~{if defined(read_group) then ("-read_group " +  '"' + read_group + '"') else ""} \
      ~{if defined(read_color_by) then ("-read_color_by " +  '"' + read_color_by + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one) then ("-read_color_interchrom_chr1 " +  '"' + read_color_inter_chrom_chr_one + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_two) then ("-read_color_interchrom_chr2 " +  '"' + read_color_inter_chrom_chr_two + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_three) then ("-read_color_interchrom_chr3 " +  '"' + read_color_inter_chrom_chr_three + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_four) then ("-read_color_interchrom_chr4 " +  '"' + read_color_inter_chrom_chr_four + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_five) then ("-read_color_interchrom_chr5 " +  '"' + read_color_inter_chrom_chr_five + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_six) then ("-read_color_interchrom_chr6 " +  '"' + read_color_inter_chrom_chr_six + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_seven) then ("-read_color_interchrom_chr7 " +  '"' + read_color_inter_chrom_chr_seven + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_eight) then ("-read_color_interchrom_chr8 " +  '"' + read_color_inter_chrom_chr_eight + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_nine) then ("-read_color_interchrom_chr9 " +  '"' + read_color_inter_chrom_chr_nine + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_zero) then ("-read_color_interchrom_chr10 " +  '"' + read_color_inter_chrom_chr_one_zero + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_one) then ("-read_color_interchrom_chr11 " +  '"' + read_color_inter_chrom_chr_one_one + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_two) then ("-read_color_interchrom_chr12 " +  '"' + read_color_inter_chrom_chr_one_two + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_three) then ("-read_color_interchrom_chr13 " +  '"' + read_color_inter_chrom_chr_one_three + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_four) then ("-read_color_interchrom_chr14 " +  '"' + read_color_inter_chrom_chr_one_four + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_five) then ("-read_color_interchrom_chr15 " +  '"' + read_color_inter_chrom_chr_one_five + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_six) then ("-read_color_interchrom_chr16 " +  '"' + read_color_inter_chrom_chr_one_six + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_seven) then ("-read_color_interchrom_chr17 " +  '"' + read_color_inter_chrom_chr_one_seven + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_eight) then ("-read_color_interchrom_chr18 " +  '"' + read_color_inter_chrom_chr_one_eight + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_one_nine) then ("-read_color_interchrom_chr19 " +  '"' + read_color_inter_chrom_chr_one_nine + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_two_zero) then ("-read_color_interchrom_chr20 " +  '"' + read_color_inter_chrom_chr_two_zero + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_two_one) then ("-read_color_interchrom_chr21 " +  '"' + read_color_inter_chrom_chr_two_one + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chr_two_two) then ("-read_color_interchrom_chr22 " +  '"' + read_color_inter_chrom_chr_two_two + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chrx) then ("-read_color_interchrom_chrX " +  '"' + read_color_inter_chrom_chrx + '"') else ""} \
      ~{if defined(read_color_inter_chrom_chry) then ("-read_color_interchrom_chrY " +  '"' + read_color_inter_chrom_chry + '"') else ""} \
      ~{if defined(read_color_inter_chrom_other) then ("-read_color_interchrom_other " +  '"' + read_color_inter_chrom_other + '"') else ""} \
      ~{if (show_soft_clipped) then "-show_soft_clipped" else ""} \
      ~{if (show_hard_clipped) then "-show_hard_clipped" else ""} \
      ~{if (show_clipped) then "-show_clipped" else ""} \
      ~{if (center_line) then "-center_line" else ""} \
      ~{if (no_target_line) then "-no_target_line" else ""} \
      ~{if defined(base_font_size) then ("-base_fontsize " +  '"' + base_font_size + '"') else ""} \
      ~{if defined(base_height) then ("-base_height " +  '"' + base_height + '"') else ""} \
      ~{if defined(base_margin_top) then ("-base_margin_top " +  '"' + base_margin_top + '"') else ""} \
      ~{if defined(base_margin_bottom) then ("-base_margin_bottom " +  '"' + base_margin_bottom + '"') else ""} \
      ~{if defined(coverage_height) then ("-coverage_height " +  '"' + coverage_height + '"') else ""} \
      ~{if defined(coverage_font_size) then ("-coverage_fontsize " +  '"' + coverage_font_size + '"') else ""} \
      ~{if defined(coverage_vaf) then ("-coverage_vaf " +  '"' + coverage_vaf + '"') else ""} \
      ~{if defined(coverage_color) then ("-coverage_color " +  '"' + coverage_color + '"') else ""} \
      ~{if defined(coverage_bgcolor) then ("-coverage_bgcolor " +  '"' + coverage_bgcolor + '"') else ""} \
      ~{if defined(heat_map_height) then ("-heatmap_height " +  '"' + heat_map_height + '"') else ""} \
      ~{if defined(heat_map_bgcolor) then ("-heatmap_bgcolor " +  '"' + heat_map_bgcolor + '"') else ""} \
      ~{if defined(gene_height) then ("-gene_height " +  '"' + gene_height + '"') else ""} \
      ~{if defined(gene_font_size) then ("-gene_fontsize " +  '"' + gene_font_size + '"') else ""} \
      ~{if defined(gene_pos_color) then ("-gene_pos_color " +  '"' + gene_pos_color + '"') else ""} \
      ~{if defined(gene_neg_color) then ("-gene_neg_color " +  '"' + gene_neg_color + '"') else ""} \
      ~{if defined(coordinates_height) then ("-coordinates_height " +  '"' + coordinates_height + '"') else ""} \
      ~{if defined(coordinates_font_size) then ("-coordinates_fontsize " +  '"' + coordinates_font_size + '"') else ""} \
      ~{if defined(coordinates_axis_loc) then ("-coordinates_axisloc " +  '"' + coordinates_axis_loc + '"') else ""} \
      ~{if defined(coordinates_bgcolor) then ("-coordinates_bgcolor " +  '"' + coordinates_bgcolor + '"') else ""} \
      ~{if defined(coordinates_label_color) then ("-coordinates_labelcolor " +  '"' + coordinates_label_color + '"') else ""} \
      ~{if (separated_bam) then "-separated_bam" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (silence) then "-silence" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamsnap:0.2.19--py_0"
  }
  parameter_meta {
    bam: "[BAM [BAM ...]]  bam or cram file(s)"
    bam_list: "list file with bam (or cram) file paths"
    title: "[TITLE [TITLE ...]]\\ntitle (name) of bam (or cram) file(s)"
    no_title: "do not draw label."
    title_font_size: "font size of title"
    pos: "[POS [POS ...]]  genomic position (ex. 1:816687-818057, 12:7462545)"
    vcf: "list file with genomic positions with VCF format"
    bed: "list file with genomic positions with BED format"
    out: "output file or title of output file"
    image_type: "output file type"
    conf: "configuration file"
    ref: "Reference sequence fasta file (ex. hg19.fa)"
    ref_index_rebuild: "if you want to rebuild fasta index file (.fai), when\\nit is older than the fasta file. (Default: false)"
    ref_version: "Reference version (default: hg38)"
    margin: "genomic margin size"
    save_image_only: "save image only"
    image_dir_name: "image directory name"
    zip_out: "make a single zip file"
    separator_height: "separator's height"
    process: "number of process for multi-processing (default: 1)"
    draw: "[DRAW [DRAW ...]]\\ntrack composition (default: -draw coordinates bamplot\\nbase gene)"
    bam_plot: "[BAMPLOT [BAMPLOT ...]]\\ntrack composition of bamplot (default: -bamplot\\ncoverage base read)"
    width: "image width (unit:px, default: 1000)"
    height: "image height (unit:px)"
    bgcolor: "background color (default: FFFFFF)"
    plot_margin_top: "top margin size of plot (default: 20)"
    plot_margin_bottom: "bottom margin size of plot (default: 20)"
    plot_margin_left: "left margin size of plot (default: 0)"
    plot_margin_right: "right margin size of plot (default: 0)"
    border: "draw border in plot (default: false)"
    grid: "draw grid in plot (default: 0 (grid size))"
    read_thickness: "read thickness (unit:px)"
    read_gap_height: "read gap height (unit:px)"
    read_gap_width: "min size of read gap width (unit:px)"
    read_bgcolor: "read background color"
    read_color: "read color"
    read_pos_color: "positive strand read color"
    read_neg_color: "negative strand read color"
    read_color_deletion: "read color of deletion"
    read_color_inversion: "read color of inversion"
    insert_size_del_threshold: "insert size threshold for deletion (default: 1000)"
    insert_size_ins_threshold: "insert size threshold for insertion (default: 50)"
    read_group: "read group"
    read_color_by: "read color by"
    read_color_inter_chrom_chr_one: "paired read color located in chromosome 1"
    read_color_inter_chrom_chr_two: "paired read color located in chromosome 2"
    read_color_inter_chrom_chr_three: "paired read color located in chromosome 3"
    read_color_inter_chrom_chr_four: "paired read color located in chromosome 4"
    read_color_inter_chrom_chr_five: "paired read color located in chromosome 5"
    read_color_inter_chrom_chr_six: "paired read color located in chromosome 6"
    read_color_inter_chrom_chr_seven: "paired read color located in chromosome 7"
    read_color_inter_chrom_chr_eight: "paired read color located in chromosome 8"
    read_color_inter_chrom_chr_nine: "paired read color located in chromosome 9"
    read_color_inter_chrom_chr_one_zero: "paired read color located in chromosome 10"
    read_color_inter_chrom_chr_one_one: "paired read color located in chromosome 11"
    read_color_inter_chrom_chr_one_two: "paired read color located in chromosome 12"
    read_color_inter_chrom_chr_one_three: "paired read color located in chromosome 13"
    read_color_inter_chrom_chr_one_four: "paired read color located in chromosome 14"
    read_color_inter_chrom_chr_one_five: "paired read color located in chromosome 15"
    read_color_inter_chrom_chr_one_six: "paired read color located in chromosome 16"
    read_color_inter_chrom_chr_one_seven: "paired read color located in chromosome 17"
    read_color_inter_chrom_chr_one_eight: "paired read color located in chromosome 18"
    read_color_inter_chrom_chr_one_nine: "paired read color located in chromosome 19"
    read_color_inter_chrom_chr_two_zero: "paired read color located in chromosome 20"
    read_color_inter_chrom_chr_two_one: "paired read color located in chromosome 21"
    read_color_inter_chrom_chr_two_two: "paired read color located in chromosome 22"
    read_color_inter_chrom_chrx: "paired read color located in chromosome X"
    read_color_inter_chrom_chry: "paired read color located in chromosome Y"
    read_color_inter_chrom_other: "paired read color located in other chromosome"
    show_soft_clipped: "show soft clipped part (default: false)"
    show_hard_clipped: "show hard clipped part (default: false)"
    show_clipped: "show soft and hard clipped part (default: false)"
    center_line: "draw center line"
    no_target_line: "do not draw target line"
    base_font_size: "font size of base track"
    base_height: "base track height"
    base_margin_top: "top margin size of base track"
    base_margin_bottom: "bottom margin size of base track"
    coverage_height: "coverage track height"
    coverage_font_size: "coverage font size"
    coverage_vaf: "coverage variant allele fraction threshold (default:\\n0.2)"
    coverage_color: "coverage color"
    coverage_bgcolor: "coverage track background color"
    heat_map_height: "coverage heatmap height"
    heat_map_bgcolor: "coverage heatmap background color"
    gene_height: "gene track height"
    gene_font_size: "font size of gene track"
    gene_pos_color: "positive strand color"
    gene_neg_color: "negative strand color"
    coordinates_height: "coordinate height"
    coordinates_font_size: "coordinate font size"
    coordinates_axis_loc: "coordinate axis location"
    coordinates_bgcolor: "coordinate background color"
    coordinates_label_color: "coordinate label color"
    separated_bam: "draw a plot for each bam"
    debug: "turn on the debugging mode"
    silence: "don't print any log."
    sub_command: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_image_type = "${in_image_type}"
  }
}