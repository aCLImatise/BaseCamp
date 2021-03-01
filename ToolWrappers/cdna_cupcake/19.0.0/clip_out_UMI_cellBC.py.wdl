version 1.0

task ClipOutUMICellBCpy {
  input {
    Int? umi_len
    Int? bc_len
    Int? tso_len
    String? umi_type
    Int? g_five_clip_seq
    File? bc_rank_file
    String bam_filename
    String output_prefix
  }
  command <<<
    clip_out_UMI_cellBC_py \
      ~{bam_filename} \
      ~{output_prefix} \
      ~{if defined(umi_len) then ("--umi_len " +  '"' + umi_len + '"') else ""} \
      ~{if defined(bc_len) then ("--bc_len " +  '"' + bc_len + '"') else ""} \
      ~{if defined(tso_len) then ("--tso_len " +  '"' + tso_len + '"') else ""} \
      ~{if defined(umi_type) then ("--umi_type " +  '"' + umi_type + '"') else ""} \
      ~{if defined(g_five_clip_seq) then ("--g5_clip_seq " +  '"' + g_five_clip_seq + '"') else ""} \
      ~{if defined(bc_rank_file) then ("--bc_rank_file " +  '"' + bc_rank_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    umi_len: "Length of UMI"
    bc_len: "Length of cell barcode"
    tso_len: "Length of TSO (for G5-10X only)"
    umi_type: "Location of the UMI"
    g_five_clip_seq: "Sequence before UMI for G5-clip (for G5-clip only)"
    bc_rank_file: "(Optional) cell barcode rank file from short read data\\n"
    bam_filename: "CCS BAM with cDNA primer removed (post LIMA)"
    output_prefix: "Output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}