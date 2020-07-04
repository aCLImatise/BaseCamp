version 1.0

task FcFetchReads {
  input {
    String? base_dir
    String? fof_n
    String? ctg_id
    String? out_dir
    Int? min_ctg_lenth
  }
  command <<<
    fc_fetch_reads \
      ~{if defined(base_dir) then ("--base_dir " +  '"' + base_dir + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(ctg_id) then ("--ctg_id " +  '"' + ctg_id + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(min_ctg_lenth) then ("--min_ctg_lenth " +  '"' + min_ctg_lenth + '"') else ""}
  >>>
  parameter_meta {
    base_dir: "the base working dir of a falcon assembly"
    fof_n: "path to the file of the list of raw read fasta files"
    ctg_id: "contig identifier in the contig fasta file"
    out_dir: "the output base_dir, default to `base_dir/3-unzip/reads` directory"
    min_ctg_lenth: "the minimum length of the contig for the outputs, default=20000"
  }
}