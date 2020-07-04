version 1.0

task LastDotplot {
  input {
    File? font_file
    Int? font_size
    String? labels_one
    String? labels_two
    String? rot_one
    String? rot_two
    File? be_done
    File? bed_two
    File? rms_kone
    File? rms_k_two
    File? gene_pre_done
    File? gene_pred_two
    String? exon_color
    String? cds_color
    File? gap_one
    File? gap_two
    String? bridged_color
    String? un_bridged_color
  }
  command <<<
    last-dotplot \
      ~{if defined(font_file) then ("--fontfile " +  '"' + font_file + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(labels_one) then ("--labels1 " +  '"' + labels_one + '"') else ""} \
      ~{if defined(labels_two) then ("--labels2 " +  '"' + labels_two + '"') else ""} \
      ~{if defined(rot_one) then ("--rot1 " +  '"' + rot_one + '"') else ""} \
      ~{if defined(rot_two) then ("--rot2 " +  '"' + rot_two + '"') else ""} \
      ~{if defined(be_done) then ("--bed1 " +  '"' + be_done + '"') else ""} \
      ~{if defined(bed_two) then ("--bed2 " +  '"' + bed_two + '"') else ""} \
      ~{if defined(rms_kone) then ("--rmsk1 " +  '"' + rms_kone + '"') else ""} \
      ~{if defined(rms_k_two) then ("--rmsk2 " +  '"' + rms_k_two + '"') else ""} \
      ~{if defined(gene_pre_done) then ("--genePred1 " +  '"' + gene_pre_done + '"') else ""} \
      ~{if defined(gene_pred_two) then ("--genePred2 " +  '"' + gene_pred_two + '"') else ""} \
      ~{if defined(exon_color) then ("--exon-color " +  '"' + exon_color + '"') else ""} \
      ~{if defined(cds_color) then ("--cds-color " +  '"' + cds_color + '"') else ""} \
      ~{if defined(gap_one) then ("--gap1 " +  '"' + gap_one + '"') else ""} \
      ~{if defined(gap_two) then ("--gap2 " +  '"' + gap_two + '"') else ""} \
      ~{if defined(bridged_color) then ("--bridged-color " +  '"' + bridged_color + '"') else ""} \
      ~{if defined(un_bridged_color) then ("--unbridged-color " +  '"' + un_bridged_color + '"') else ""}
  >>>
  parameter_meta {
    font_file: "TrueType or OpenType font file"
    font_size: "TrueType or OpenType font size (default: 14)"
    labels_one: "genome1 labels: 0=name, 1=name:length, 2=name:start:length, 3=name:start-end (default=0)"
    labels_two: "genome2 labels: 0=name, 1=name:length, 2=name:start:length, 3=name:start-end (default=0)"
    rot_one: "text rotation for the 1st genome (default=h)"
    rot_two: "text rotation for the 2nd genome (default=v)"
    be_done: "read genome1 annotations from BED file"
    bed_two: "read genome2 annotations from BED file"
    rms_kone: "read genome1 repeats from RepeatMasker .out or rmsk.txt file"
    rms_k_two: "read genome2 repeats from RepeatMasker .out or rmsk.txt file"
    gene_pre_done: "read genome1 genes from genePred file"
    gene_pred_two: "read genome2 genes from genePred file"
    exon_color: "color for exons (default=PaleGreen)"
    cds_color: "color for protein-coding regions (default=LimeGreen)"
    gap_one: "read genome1 unsequenced gaps from agp or gap file"
    gap_two: "read genome2 unsequenced gaps from agp or gap file"
    bridged_color: "color for bridged gaps (default: yellow)"
    un_bridged_color: "color for unbridged gaps (default: orange)"
  }
}