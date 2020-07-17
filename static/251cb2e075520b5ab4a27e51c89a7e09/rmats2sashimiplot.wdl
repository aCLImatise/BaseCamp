version 1.0

task Rmats2sashimiplot {
  input {
    String? type_event_rmats
    String? rmats_output_event
    String? coordinate_genome_annotation
    String? lone
    String? l_two
    String? the_output_directory
    String? s_one
    String? s_two
    String? bone
    String? b_two
    String usage
  }
  command <<<
    rmats2sashimiplot \
      ~{usage} \
      ~{if defined(type_event_rmats) then ("-t " +  '"' + type_event_rmats + '"') else ""} \
      ~{if defined(rmats_output_event) then ("-e " +  '"' + rmats_output_event + '"') else ""} \
      ~{if defined(coordinate_genome_annotation) then ("-c " +  '"' + coordinate_genome_annotation + '"') else ""} \
      ~{if defined(lone) then ("--l1 " +  '"' + lone + '"') else ""} \
      ~{if defined(l_two) then ("--l2 " +  '"' + l_two + '"') else ""} \
      ~{if defined(the_output_directory) then ("-o " +  '"' + the_output_directory + '"') else ""} \
      ~{if defined(s_one) then ("--s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("--s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(bone) then ("--b1 " +  '"' + bone + '"') else ""} \
      ~{if defined(b_two) then ("--b2 " +  '"' + b_two + '"') else ""}
  >>>
  parameter_meta {
    type_event_rmats: "Type of event from rMATS result used in the analysis.eventType is 'SE', 'A5SS', 'A3SS', 'MXE' or 'RI'.'SE' is for skipped exon events,'A5SS' is for alternative 5' splice site events,'A3SS' is for alternative 3' splice site events,'MXE' is for mutually exclusive exons events and 'RI' is for retained intron events (Only if using rMATS format result as event file)."
    rmats_output_event: "The rMATS output event file (Only if using rMATS format result as event file)."
    coordinate_genome_annotation: "The coordinate of genome region and an annotation of genes and transcripts in GFF3 format. Coordinateand annotation file must be colon separated(Only if using coordinate and annotation file)."
    lone: "The label for first sample."
    l_two: "The label for second sample."
    the_output_directory: "The output directory."
    s_one: "sample_1 in sam format (s1_rep1.sam[,s1_rep2.sam])"
    s_two: "sample_2 in sam format (s2_rep1.sam[,s2_rep2.sam])"
    bone: "sample_1 in bam format(s1_rep1.bam[,s1_rep2.bam])"
    b_two: "sample_2 in bam format(s2_rep1.bam[,s2_rep2.bam])"
    usage: ""
  }
}