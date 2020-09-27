version 1.0

task Rmats2sashimiplot {
  input {
    String? type_event_rmats
    File? rmats_output_event
    File? coordinate_genome_region
    Int? lone
    Int? l_two
    Directory? the_output_directory
    Int? s_one
    Int? s_two
    Int? bone
    Int? b_two
    Int? exon_s
    Int? intron_s
    File? group_info
    Int? min_counts
    Int? color
    Int? font_size
    Boolean? hide_number
    String usage
  }
  command <<<
    rmats2sashimiplot \
      ~{usage} \
      ~{if defined(type_event_rmats) then ("-t " +  '"' + type_event_rmats + '"') else ""} \
      ~{if defined(rmats_output_event) then ("-e " +  '"' + rmats_output_event + '"') else ""} \
      ~{if defined(coordinate_genome_region) then ("-c " +  '"' + coordinate_genome_region + '"') else ""} \
      ~{if defined(lone) then ("--l1 " +  '"' + lone + '"') else ""} \
      ~{if defined(l_two) then ("--l2 " +  '"' + l_two + '"') else ""} \
      ~{if defined(the_output_directory) then ("-o " +  '"' + the_output_directory + '"') else ""} \
      ~{if defined(s_one) then ("--s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("--s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(bone) then ("--b1 " +  '"' + bone + '"') else ""} \
      ~{if defined(b_two) then ("--b2 " +  '"' + b_two + '"') else ""} \
      ~{if defined(exon_s) then ("--exon_s " +  '"' + exon_s + '"') else ""} \
      ~{if defined(intron_s) then ("--intron_s " +  '"' + intron_s + '"') else ""} \
      ~{if defined(group_info) then ("--group-info " +  '"' + group_info + '"') else ""} \
      ~{if defined(min_counts) then ("--min-counts " +  '"' + min_counts + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(font_size) then ("--font-size " +  '"' + font_size + '"') else ""} \
      ~{if (hide_number) then "--hide-number" else ""}
  >>>
  parameter_meta {
    type_event_rmats: "Type of event from rMATS result used in the\\nanalysis.eventType is 'SE', 'A5SS', 'A3SS', 'MXE' or\\n'RI'.'SE' is for skipped exon events,'A5SS' is for\\nalternative 5' splice site events,'A3SS' is for\\nalternative 3' splice site events,'MXE' is for\\nmutually exclusive exons events and 'RI' is for\\nretained intron events (Only if using rMATS format\\nresult as event file)."
    rmats_output_event: "The rMATS output event file (Only if using rMATS\\nformat result as event file)."
    coordinate_genome_region: "The coordinate of genome region and an annotation of\\ngenes and transcripts in GFF3 format. Coordinateand\\nannotation file must be colon separated(Only if using\\ncoordinate and annotation file)."
    lone: "The label for first sample."
    l_two: "The label for second sample."
    the_output_directory: "The output directory."
    s_one: "sample_1 in sam format (s1_rep1.sam[,s1_rep2.sam])"
    s_two: "sample_2 in sam format (s2_rep1.sam[,s2_rep2.sam])"
    bone: "sample_1 in bam format(s1_rep1.bam[,s1_rep2.bam])"
    b_two: "sample_2 in bam format(s2_rep1.bam[,s2_rep2.bam])"
    exon_s: "The size of scale down exons. The default is 1."
    intron_s: "The size of scale down introns. For example,if"
    group_info: "If the user wants to divide the bam files manually,\\nyou can provide a '*.gf' file."
    min_counts: "If the junction count is smaller than this number,\\nthis single junction's count would be omitted in the\\nplot."
    color: "Set the color in format(\\\"#CC0011\\\"[,\\\"#CC0011\\\"]). The\\nnumber of the colors equal to the total number of bam\\nfiles in different samples."
    font_size: "Set the font size."
    hide_number: "--no-text-background\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
    File out_rmats_output_event = "${in_rmats_output_event}"
    Directory out_the_output_directory = "${in_the_output_directory}"
  }
}