version 1.0

task Rmats2sashimiplot {
  input {
    Int? lone
    Int? l_two
    Directory? the_output_directory
    String? type_event_rmats
    File? rmats_output_event
    File? genome_region_coordinates
    Int? s_one
    Int? s_two
    Int? bone
    Int? b_two
    Int? exon_s
    File? group_info
    Int? min_counts
    Int? color
    Int? font_size
    Boolean? hide_number
    Boolean? no_text_background
  }
  command <<<
    rmats2sashimiplot \
      ~{if defined(lone) then ("--l1 " +  '"' + lone + '"') else ""} \
      ~{if defined(l_two) then ("--l2 " +  '"' + l_two + '"') else ""} \
      ~{if defined(the_output_directory) then ("-o " +  '"' + the_output_directory + '"') else ""} \
      ~{if defined(type_event_rmats) then ("-t " +  '"' + type_event_rmats + '"') else ""} \
      ~{if defined(rmats_output_event) then ("-e " +  '"' + rmats_output_event + '"') else ""} \
      ~{if defined(genome_region_coordinates) then ("-c " +  '"' + genome_region_coordinates + '"') else ""} \
      ~{if defined(s_one) then ("--s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("--s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(bone) then ("--b1 " +  '"' + bone + '"') else ""} \
      ~{if defined(b_two) then ("--b2 " +  '"' + b_two + '"') else ""} \
      ~{if defined(exon_s) then ("--exon_s " +  '"' + exon_s + '"') else ""} \
      ~{if defined(group_info) then ("--group-info " +  '"' + group_info + '"') else ""} \
      ~{if defined(min_counts) then ("--min-counts " +  '"' + min_counts + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(font_size) then ("--font-size " +  '"' + font_size + '"') else ""} \
      ~{if (hide_number) then "--hide-number" else ""} \
      ~{if (no_text_background) then "--no-text-background" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmats2sashimiplot:2.0.4--py39h6a678da_2"
  }
  parameter_meta {
    lone: "The label for first sample."
    l_two: "The label for second sample."
    the_output_directory: "The output directory."
    type_event_rmats: "Type of event from rMATS result used in the analysis.\\n'SE': skipped exon, 'A5SS': alternative 5' splice\\nsite, 'A3SS' alternative 3' splice site, 'MXE':\\nmutually exclusive exons, 'RI': retained intron. (Only\\nif using rMATS event input)"
    rmats_output_event: "The rMATS output event file (Only if using rMATS event\\ninput)"
    genome_region_coordinates: "The genome region coordinates and a GFF3 (not GTF)\\nannotation file of genes and transcripts. The format\\nis -c\\n{chromosome}:{strand}:{start}:{end}:{/path/to/gff3}\\n(Only if using Coordinate and annotation input)"
    s_one: "sample_1 sam files: s1_rep1.sam[,s1_rep2.sam]"
    s_two: "sample_2 sam files: s2_rep1.sam[,s2_rep2.sam]"
    bone: "sample_1 bam files: s1_rep1.bam[,s1_rep2.bam]"
    b_two: "sample_2 bam files: s2_rep1.bam[,s2_rep2.bam]"
    exon_s: "How much to scale down exons. Default: 1"
    group_info: "The path to a *.gf file which groups the replicates.\\nOne sashimi plot will be generated for each group\\ninstead of the default behavior of one plot per\\nreplicate"
    min_counts: "Individual junctions with read count below --min-\\ncounts will be omitted from the plot. Default: 0"
    color: "Specify a list of colors with one color per plot.\\nWithout grouping there is one plot per replicate. With\\ngrouping there is one plot per group: --color\\n'#CC0011[,#FF8800]'"
    font_size: "Set the font size. Default: 8"
    hide_number: "Do not display the read count on the junctions"
    no_text_background: "Do not put a white box behind the junction read count"
  }
  output {
    File out_stdout = stdout()
    Directory out_the_output_directory = "${in_the_output_directory}"
  }
}