version 1.0

task Lastdotplot {
  input {
    Boolean? verbose
    Int? width
    Int? height
    Int? max_seqs
    Int? seq_one
    Int? seq_two
    String? forward_color
    String? reverse_color
    File? alignments
    Int? sort_one
    Int? sort_two
    Int? strands_one
    Int? strands_two
    Int? max_gap_one
    Int? max_gap_two
    Int? pad
    Int? join
    Int? border_pixels
    String? border_color
    String? margin_color
    File? font_file
    Int? font_size
    Int? labels_one
    Int? labels_two
    Int? rot_one
    Int? rot_two
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
    last_dotplot \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(max_seqs) then ("--maxseqs " +  '"' + max_seqs + '"') else ""} \
      ~{if defined(seq_one) then ("--seq1 " +  '"' + seq_one + '"') else ""} \
      ~{if defined(seq_two) then ("--seq2 " +  '"' + seq_two + '"') else ""} \
      ~{if defined(forward_color) then ("--forwardcolor " +  '"' + forward_color + '"') else ""} \
      ~{if defined(reverse_color) then ("--reversecolor " +  '"' + reverse_color + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(sort_one) then ("--sort1 " +  '"' + sort_one + '"') else ""} \
      ~{if defined(sort_two) then ("--sort2 " +  '"' + sort_two + '"') else ""} \
      ~{if defined(strands_one) then ("--strands1 " +  '"' + strands_one + '"') else ""} \
      ~{if defined(strands_two) then ("--strands2 " +  '"' + strands_two + '"') else ""} \
      ~{if defined(max_gap_one) then ("--max-gap1 " +  '"' + max_gap_one + '"') else ""} \
      ~{if defined(max_gap_two) then ("--max-gap2 " +  '"' + max_gap_two + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(join) then ("--join " +  '"' + join + '"') else ""} \
      ~{if defined(border_pixels) then ("--border-pixels " +  '"' + border_pixels + '"') else ""} \
      ~{if defined(border_color) then ("--border-color " +  '"' + border_color + '"') else ""} \
      ~{if defined(margin_color) then ("--margin-color " +  '"' + margin_color + '"') else ""} \
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
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  parameter_meta {
    verbose: "show progress messages & data about the plot"
    width: "maximum width in pixels (default: 1000)"
    height: "maximum height in pixels (default: 1000)"
    max_seqs: "maximum number of horizontal or vertical sequences\\n(default=100)"
    seq_one: "which sequences to show from the 1st genome"
    seq_two: "which sequences to show from the 2nd genome"
    forward_color: "color for forward alignments (default: red)"
    reverse_color: "color for reverse alignments (default: blue)"
    alignments: "secondary alignments"
    sort_one: "genome1 sequence order: 0=input order, 1=name order,\\n2=length order, 3=alignment order (default=1)"
    sort_two: "genome2 sequence order: 0=input order, 1=name order,\\n2=length order, 3=alignment order (default=1)"
    strands_one: "genome1 sequence orientation: 0=forward orientation,\\n1=alignment orientation (default=0)"
    strands_two: "genome2 sequence orientation: 0=forward orientation,\\n1=alignment orientation (default=0)"
    max_gap_one: "maximum unaligned (end,mid) gap in genome1: fraction\\nof aligned length (default=0.5,2)"
    max_gap_two: "maximum unaligned (end,mid) gap in genome2: fraction\\nof aligned length (default=0.5,2)"
    pad: "pad length when cutting unaligned gaps: fraction of\\naligned length (default=0.04)"
    join: "join: 0=nothing, 1=alignments adjacent in genome1,\\n2=alignments adjacent in genome2 (default=0)"
    border_pixels: "number of pixels between sequences (default=1)"
    border_color: "color for pixels between sequences (default=black)"
    margin_color: "margin color"
    font_file: "TrueType or OpenType font file"
    font_size: "TrueType or OpenType font size (default: 14)"
    labels_one: "genome1 labels: 0=name, 1=name:length,\\n2=name:start:length, 3=name:start-end (default=0)"
    labels_two: "genome2 labels: 0=name, 1=name:length,\\n2=name:start:length, 3=name:start-end (default=0)"
    rot_one: "text rotation for the 1st genome (default=h)"
    rot_two: "text rotation for the 2nd genome (default=v)"
    be_done: "read genome1 annotations from BED file"
    bed_two: "read genome2 annotations from BED file"
    rms_kone: "read genome1 repeats from RepeatMasker .out or\\nrmsk.txt file"
    rms_k_two: "read genome2 repeats from RepeatMasker .out or\\nrmsk.txt file"
    gene_pre_done: "read genome1 genes from genePred file"
    gene_pred_two: "read genome2 genes from genePred file"
    exon_color: "color for exons (default=PaleGreen)"
    cds_color: "color for protein-coding regions (default=LimeGreen)"
    gap_one: "read genome1 unsequenced gaps from agp or gap file"
    gap_two: "read genome2 unsequenced gaps from agp or gap file"
    bridged_color: "color for bridged gaps (default: yellow)"
    un_bridged_color: "color for unbridged gaps (default: orange)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_rms_kone = "${in_rms_kone}"
    File out_rms_k_two = "${in_rms_k_two}"
  }
}