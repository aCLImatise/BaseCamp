class: CommandLineTool
id: bamsnap.cwl
inputs:
- id: in_bam
  doc: '[BAM [BAM ...]]  bam or cram file(s)'
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_bam_list
  doc: list file with bam (or cram) file paths
  type: File?
  inputBinding:
    prefix: -bamlist
- id: in_title
  doc: "[TITLE [TITLE ...]]\ntitle (name) of bam (or cram) file(s)"
  type: boolean?
  inputBinding:
    prefix: -title
- id: in_no_title
  doc: do not draw label.
  type: boolean?
  inputBinding:
    prefix: -no_title
- id: in_title_font_size
  doc: font size of title
  type: long?
  inputBinding:
    prefix: -title_fontsize
- id: in_pos
  doc: '[POS [POS ...]]  genomic position (ex. 1:816687-818057, 12:7462545)'
  type: boolean?
  inputBinding:
    prefix: -pos
- id: in_vcf
  doc: list file with genomic positions with VCF format
  type: File?
  inputBinding:
    prefix: -vcf
- id: in_bed
  doc: list file with genomic positions with BED format
  type: File?
  inputBinding:
    prefix: -bed
- id: in_out
  doc: output file or title of output file
  type: File?
  inputBinding:
    prefix: -out
- id: in_image_type
  doc: output file type
  type: File?
  inputBinding:
    prefix: -imagetype
- id: in_conf
  doc: configuration file
  type: File?
  inputBinding:
    prefix: -conf
- id: in_ref
  doc: Reference sequence fasta file (ex. hg19.fa)
  type: File?
  inputBinding:
    prefix: -ref
- id: in_ref_index_rebuild
  doc: "if you want to rebuild fasta index file (.fai), when\nit is older than the\
    \ fasta file. (Default: false)"
  type: boolean?
  inputBinding:
    prefix: -ref_index_rebuild
- id: in_ref_version
  doc: 'Reference version (default: hg38)'
  type: long?
  inputBinding:
    prefix: -refversion
- id: in_margin
  doc: genomic margin size
  type: long?
  inputBinding:
    prefix: -margin
- id: in_save_image_only
  doc: save image only
  type: boolean?
  inputBinding:
    prefix: -save_image_only
- id: in_image_dir_name
  doc: image directory name
  type: Directory?
  inputBinding:
    prefix: -image_dir_name
- id: in_zip_out
  doc: make a single zip file
  type: boolean?
  inputBinding:
    prefix: -zipout
- id: in_separator_height
  doc: separator's height
  type: string?
  inputBinding:
    prefix: -separator_height
- id: in_process
  doc: 'number of process for multi-processing (default: 1)'
  type: long?
  inputBinding:
    prefix: -process
- id: in_draw
  doc: "[DRAW [DRAW ...]]\ntrack composition (default: -draw coordinates bamplot\n\
    base gene)"
  type: boolean?
  inputBinding:
    prefix: -draw
- id: in_bam_plot
  doc: "[BAMPLOT [BAMPLOT ...]]\ntrack composition of bamplot (default: -bamplot\n\
    coverage base read)"
  type: boolean?
  inputBinding:
    prefix: -bamplot
- id: in_width
  doc: 'image width (unit:px, default: 1000)'
  type: long?
  inputBinding:
    prefix: -width
- id: in_height
  doc: image height (unit:px)
  type: string?
  inputBinding:
    prefix: -height
- id: in_bgcolor
  doc: 'background color (default: FFFFFF)'
  type: string?
  inputBinding:
    prefix: -bgcolor
- id: in_plot_margin_top
  doc: 'top margin size of plot (default: 20)'
  type: long?
  inputBinding:
    prefix: -plot_margin_top
- id: in_plot_margin_bottom
  doc: 'bottom margin size of plot (default: 20)'
  type: long?
  inputBinding:
    prefix: -plot_margin_bottom
- id: in_plot_margin_left
  doc: 'left margin size of plot (default: 0)'
  type: long?
  inputBinding:
    prefix: -plot_margin_left
- id: in_plot_margin_right
  doc: 'right margin size of plot (default: 0)'
  type: long?
  inputBinding:
    prefix: -plot_margin_right
- id: in_border
  doc: 'draw border in plot (default: false)'
  type: boolean?
  inputBinding:
    prefix: -border
- id: in_grid
  doc: 'draw grid in plot (default: 0 (grid size))'
  type: long?
  inputBinding:
    prefix: -grid
- id: in_read_thickness
  doc: read thickness (unit:px)
  type: string?
  inputBinding:
    prefix: -read_thickness
- id: in_read_gap_height
  doc: read gap height (unit:px)
  type: string?
  inputBinding:
    prefix: -read_gap_height
- id: in_read_gap_width
  doc: min size of read gap width (unit:px)
  type: long?
  inputBinding:
    prefix: -read_gap_width
- id: in_read_bgcolor
  doc: read background color
  type: string?
  inputBinding:
    prefix: -read_bgcolor
- id: in_read_color
  doc: read color
  type: string?
  inputBinding:
    prefix: -read_color
- id: in_read_pos_color
  doc: positive strand read color
  type: string?
  inputBinding:
    prefix: -read_pos_color
- id: in_read_neg_color
  doc: negative strand read color
  type: string?
  inputBinding:
    prefix: -read_neg_color
- id: in_read_color_deletion
  doc: read color of deletion
  type: string?
  inputBinding:
    prefix: -read_color_deletion
- id: in_read_color_inversion
  doc: read color of inversion
  type: string?
  inputBinding:
    prefix: -read_color_inversion
- id: in_insert_size_del_threshold
  doc: 'insert size threshold for deletion (default: 1000)'
  type: long?
  inputBinding:
    prefix: -insert_size_del_threshold
- id: in_insert_size_ins_threshold
  doc: 'insert size threshold for insertion (default: 50)'
  type: long?
  inputBinding:
    prefix: -insert_size_ins_threshold
- id: in_read_group
  doc: read group
  type: string?
  inputBinding:
    prefix: -read_group
- id: in_read_color_by
  doc: read color by
  type: string?
  inputBinding:
    prefix: -read_color_by
- id: in_read_color_inter_chrom_chr_one
  doc: paired read color located in chromosome 1
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr1
- id: in_read_color_inter_chrom_chr_two
  doc: paired read color located in chromosome 2
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr2
- id: in_read_color_inter_chrom_chr_three
  doc: paired read color located in chromosome 3
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr3
- id: in_read_color_inter_chrom_chr_four
  doc: paired read color located in chromosome 4
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr4
- id: in_read_color_inter_chrom_chr_five
  doc: paired read color located in chromosome 5
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr5
- id: in_read_color_inter_chrom_chr_six
  doc: paired read color located in chromosome 6
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr6
- id: in_read_color_inter_chrom_chr_seven
  doc: paired read color located in chromosome 7
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr7
- id: in_read_color_inter_chrom_chr_eight
  doc: paired read color located in chromosome 8
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr8
- id: in_read_color_inter_chrom_chr_nine
  doc: paired read color located in chromosome 9
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr9
- id: in_read_color_inter_chrom_chr_one_zero
  doc: paired read color located in chromosome 10
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr10
- id: in_read_color_inter_chrom_chr_one_one
  doc: paired read color located in chromosome 11
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr11
- id: in_read_color_inter_chrom_chr_one_two
  doc: paired read color located in chromosome 12
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr12
- id: in_read_color_inter_chrom_chr_one_three
  doc: paired read color located in chromosome 13
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr13
- id: in_read_color_inter_chrom_chr_one_four
  doc: paired read color located in chromosome 14
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr14
- id: in_read_color_inter_chrom_chr_one_five
  doc: paired read color located in chromosome 15
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr15
- id: in_read_color_inter_chrom_chr_one_six
  doc: paired read color located in chromosome 16
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr16
- id: in_read_color_inter_chrom_chr_one_seven
  doc: paired read color located in chromosome 17
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr17
- id: in_read_color_inter_chrom_chr_one_eight
  doc: paired read color located in chromosome 18
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr18
- id: in_read_color_inter_chrom_chr_one_nine
  doc: paired read color located in chromosome 19
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr19
- id: in_read_color_inter_chrom_chr_two_zero
  doc: paired read color located in chromosome 20
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr20
- id: in_read_color_inter_chrom_chr_two_one
  doc: paired read color located in chromosome 21
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr21
- id: in_read_color_inter_chrom_chr_two_two
  doc: paired read color located in chromosome 22
  type: long?
  inputBinding:
    prefix: -read_color_interchrom_chr22
- id: in_read_color_inter_chrom_chrx
  doc: paired read color located in chromosome X
  type: string?
  inputBinding:
    prefix: -read_color_interchrom_chrX
- id: in_read_color_inter_chrom_chry
  doc: paired read color located in chromosome Y
  type: string?
  inputBinding:
    prefix: -read_color_interchrom_chrY
- id: in_read_color_inter_chrom_other
  doc: paired read color located in other chromosome
  type: string?
  inputBinding:
    prefix: -read_color_interchrom_other
- id: in_show_soft_clipped
  doc: 'show soft clipped part (default: false)'
  type: boolean?
  inputBinding:
    prefix: -show_soft_clipped
- id: in_show_hard_clipped
  doc: 'show hard clipped part (default: false)'
  type: boolean?
  inputBinding:
    prefix: -show_hard_clipped
- id: in_show_clipped
  doc: 'show soft and hard clipped part (default: false)'
  type: boolean?
  inputBinding:
    prefix: -show_clipped
- id: in_center_line
  doc: draw center line
  type: boolean?
  inputBinding:
    prefix: -center_line
- id: in_no_target_line
  doc: do not draw target line
  type: boolean?
  inputBinding:
    prefix: -no_target_line
- id: in_base_font_size
  doc: font size of base track
  type: long?
  inputBinding:
    prefix: -base_fontsize
- id: in_base_height
  doc: base track height
  type: string?
  inputBinding:
    prefix: -base_height
- id: in_base_margin_top
  doc: top margin size of base track
  type: long?
  inputBinding:
    prefix: -base_margin_top
- id: in_base_margin_bottom
  doc: bottom margin size of base track
  type: long?
  inputBinding:
    prefix: -base_margin_bottom
- id: in_coverage_height
  doc: coverage track height
  type: string?
  inputBinding:
    prefix: -coverage_height
- id: in_coverage_font_size
  doc: coverage font size
  type: long?
  inputBinding:
    prefix: -coverage_fontsize
- id: in_coverage_vaf
  doc: "coverage variant allele fraction threshold (default:\n0.2)"
  type: double?
  inputBinding:
    prefix: -coverage_vaf
- id: in_coverage_color
  doc: coverage color
  type: string?
  inputBinding:
    prefix: -coverage_color
- id: in_coverage_bgcolor
  doc: coverage track background color
  type: string?
  inputBinding:
    prefix: -coverage_bgcolor
- id: in_heat_map_height
  doc: coverage heatmap height
  type: string?
  inputBinding:
    prefix: -heatmap_height
- id: in_heat_map_bgcolor
  doc: coverage heatmap background color
  type: string?
  inputBinding:
    prefix: -heatmap_bgcolor
- id: in_gene_height
  doc: gene track height
  type: string?
  inputBinding:
    prefix: -gene_height
- id: in_gene_font_size
  doc: font size of gene track
  type: long?
  inputBinding:
    prefix: -gene_fontsize
- id: in_gene_pos_color
  doc: positive strand color
  type: string?
  inputBinding:
    prefix: -gene_pos_color
- id: in_gene_neg_color
  doc: negative strand color
  type: string?
  inputBinding:
    prefix: -gene_neg_color
- id: in_coordinates_height
  doc: coordinate height
  type: string?
  inputBinding:
    prefix: -coordinates_height
- id: in_coordinates_font_size
  doc: coordinate font size
  type: long?
  inputBinding:
    prefix: -coordinates_fontsize
- id: in_coordinates_axis_loc
  doc: coordinate axis location
  type: string?
  inputBinding:
    prefix: -coordinates_axisloc
- id: in_coordinates_bgcolor
  doc: coordinate background color
  type: string?
  inputBinding:
    prefix: -coordinates_bgcolor
- id: in_coordinates_label_color
  doc: coordinate label color
  type: string?
  inputBinding:
    prefix: -coordinates_labelcolor
- id: in_separated_bam
  doc: draw a plot for each bam
  type: boolean?
  inputBinding:
    prefix: -separated_bam
- id: in_debug
  doc: turn on the debugging mode
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_silence
  doc: don't print any log.
  type: boolean?
  inputBinding:
    prefix: -silence
- id: in_sub_command
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file or title of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_image_type
  doc: output file type
  type: File?
  outputBinding:
    glob: $(inputs.in_image_type)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamsnap:0.2.19--py_0
cwlVersion: v1.1
baseCommand:
- bamsnap
