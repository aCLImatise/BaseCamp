version 1.0

task ClipOutUMICellBC.py {
  input {
    String? umi_len
    String? bc_len
    String? tso_len
    String? umi_type
    String? g_five_clip_seq
    String? bc_rank_file
    String bam_filename
    String output_prefix
  }
  command <<<
    clip_out_UMI_cellBC.py \
      ~{bam_filename} \
      ~{output_prefix} \
      ~{if defined(umi_len) then ("--umi_len " +  '"' + umi_len + '"') else ""} \
      ~{if defined(bc_len) then ("--bc_len " +  '"' + bc_len + '"') else ""} \
      ~{if defined(tso_len) then ("--tso_len " +  '"' + tso_len + '"') else ""} \
      ~{if defined(umi_type) then ("--umi_type " +  '"' + umi_type + '"') else ""} \
      ~{if defined(g_five_clip_seq) then ("--g5_clip_seq " +  '"' + g_five_clip_seq + '"') else ""} \
      ~{if defined(bc_rank_file) then ("--bc_rank_file " +  '"' + bc_rank_file + '"') else ""}
  >>>
  parameter_meta {
    umi_len: "Length of UMI"
    bc_len: "Length of cell barcode"
    tso_len: "Length of TSO (for G5-10X only)"
    umi_type: "Location of the UMI"
    g_five_clip_seq: "Sequence before UMI for G5-clip (for G5-clip only)"
    bc_rank_file: "(Optional) cell barcode rank file from short read data"
    bam_filename: "CCS BAM with cDNA primer removed (post LIMA)"
    output_prefix: "Output prefix"
  }
}