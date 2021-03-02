version 1.0

task Cassis {
  input {
    Boolean? extend_before
    Boolean? extend_by_adding_gene
    Boolean? extend_ab_by_adding_gene
    Boolean? sequence_sr_smaller
    Boolean? sequence_sa_smaller
    Boolean? sequence_sb_smaller
    Boolean? sequence_sa_sb
    Boolean? sequence_sr_bigger
    Boolean? segmentation_performed_there
    Boolean? segmentation_performed_r
    String godot
    String _breakpoint_id
    String type
    String sr_gene_a
    String sr_gene_b
    String src_hr
    String sr_inf
    String srs_up
    String so_gene_a
    String so_gene_b
    String so_chra
    String soc_hrb
    String so_inf_a
    String so_supa
    String so_in_fb
    String so_sup_b
    String bkp_begin
    String bkp_end
    String var_28
    String breakpoint_i_d
    String chr
    String old_begin
    String old_end
    String new_begin
    String new_end
    String var_35
  }
  command <<<
    cassis \
      ~{godot} \
      ~{_breakpoint_id} \
      ~{type} \
      ~{sr_gene_a} \
      ~{sr_gene_b} \
      ~{src_hr} \
      ~{sr_inf} \
      ~{srs_up} \
      ~{so_gene_a} \
      ~{so_gene_b} \
      ~{so_chra} \
      ~{soc_hrb} \
      ~{so_inf_a} \
      ~{so_supa} \
      ~{so_in_fb} \
      ~{so_sup_b} \
      ~{bkp_begin} \
      ~{bkp_end} \
      ~{var_28} \
      ~{breakpoint_i_d} \
      ~{chr} \
      ~{old_begin} \
      ~{old_end} \
      ~{new_begin} \
      ~{new_end} \
      ~{var_35} \
      ~{if (extend_before) then "--extend_before" else ""} \
      ~{if (extend_by_adding_gene) then "--extend_by_adding_gene" else ""} \
      ~{if (extend_ab_by_adding_gene) then "--extend_ab_by_adding_gene" else ""} \
      ~{if (sequence_sr_smaller) then "-2" else ""} \
      ~{if (sequence_sa_smaller) then "-3" else ""} \
      ~{if (sequence_sb_smaller) then "-4" else ""} \
      ~{if (sequence_sa_sb) then "-5" else ""} \
      ~{if (sequence_sr_bigger) then "-6" else ""} \
      ~{if (segmentation_performed_there) then "-1" else ""} \
      ~{if (segmentation_performed_r) then "-7" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cassis:0.0.20120106--0"
  }
  parameter_meta {
    extend_before: "[T/F]"
    extend_by_adding_gene: "[T/F]"
    extend_ab_by_adding_gene: "[T/F]"
    sequence_sr_smaller: ": Sequence SR smaller than the allowed limit"
    sequence_sa_smaller: ": Sequence SA smaller than the allowed limit"
    sequence_sb_smaller: ": Sequence SB smaller than the allowed limit"
    sequence_sa_sb: ": Sequence SA and SB smaller than the allowed limit"
    sequence_sr_bigger: ": Sequence SR bigger than the allowed limit"
    segmentation_performed_there: ": Segmentation was not performed because there are no hits on\\nthe alignments of the sequences SR vs SA and SR vs SB"
    segmentation_performed_r: ": Segmentation was not performed because R aborted the execution"
    godot: "- id      = Name of the synteny block\\n- c1      = Chromosome of the genome GR where the block is located\\n- inf1    = Start position of the block in the chromosome c1\\n- sup1    = End position of the block in the chromosome c1\\n- c2      = Chromosome of the genome GO where the block is located\\n- inf2    = Start position of the block in the chromosome c2\\n- sup2    = End position of the block in the chromosome c2\\n- strand  = If 1, the synteny blocks of the genomes GR and GO are on\\nthe same strand. Otherwise, they are on different strands."
    _breakpoint_id: "- Breakpoint ID"
    type: "- Type of the breakpoint: inter or intra"
    sr_gene_a: "- Name of the gene/block A in the sequence SR (genome GR)"
    sr_gene_b: "- Name of the gene/block B in the sequence SR (genome GR)"
    src_hr: "- Chromosome of the genes/blocks A and B (genome GR)"
    sr_inf: "- Inferior boundary of the sequence SR"
    srs_up: "- Superior boundary of the sequence SR"
    so_gene_a: "- Name of the gene/block A in the sequence SA (genome GO)"
    so_gene_b: "- Name of the gene/block B in the sequence SB (genome GO)"
    so_chra: "- Chromosome of the gene/block A (genome GO)"
    soc_hrb: "- Chromosome of the gene/block B (genome GO)"
    so_inf_a: "- Inferior boundary of the sequence SA"
    so_supa: "- Superior boundary of the sequence SA"
    so_in_fb: "- Inferior boundary of the sequence SB"
    so_sup_b: "- Superior boundary of the sequence SB"
    bkp_begin: "- Relative position of the breakpoint begin (related to sRinf)"
    bkp_end: "- Relative position of the breakpoint end (related to sRinf)"
    var_28: "- Status of the breakpoint"
    breakpoint_i_d: "- Breakpoint id"
    chr: "- Chromosome where the breakpoint is located (Genome GR)"
    old_begin: "- Old breakpoint begin position (in the chromosome sequence)"
    old_end: "- Old breakpoint end position (in the chromosome sequence)"
    new_begin: "- New breakpoint begin position (in the chromosome sequence) \\nafter the segmentation"
    new_end: "- New breakpoint end position (in the chromosome sequence)\\nafter the segmentation"
    var_35: "- Status of the breakpoint"
  }
  output {
    File out_stdout = stdout()
  }
}