version 1.0

task RtgLicense {
  input {
    String format
    Int sdf_two_fast_a
    Int sdf_two_fast_q
    Int sdf_two_sam
    String fast_q_trim
    String genome_sim
    String cg_sim
    String read_sim
    String pop_sim
    String samples_im
    String child_sim
    String de_novo_sim
    String ped_samples_im
    String sample_replay
    String b_gzip
    String index
    String extract
    String sdf_stats
    String sdf_subset
    String sdf_subseq
    String mendelian
    String vcf_stats
    String vcf_merge
    String vcf_filter
    String vcf_annotate
    String vcf_subset
    String vcf_split
    String vcf_decompose
    String vcf_eval
    String sv_decompose
    String bnd_eval
    String ped_filter
    String ped_stats
    String roc_plot
    String version
    String license
    String help
  }
  command <<<
    rtg license \
      ~{format} \
      ~{sdf_two_fast_a} \
      ~{sdf_two_fast_q} \
      ~{sdf_two_sam} \
      ~{fast_q_trim} \
      ~{genome_sim} \
      ~{cg_sim} \
      ~{read_sim} \
      ~{pop_sim} \
      ~{samples_im} \
      ~{child_sim} \
      ~{de_novo_sim} \
      ~{ped_samples_im} \
      ~{sample_replay} \
      ~{b_gzip} \
      ~{index} \
      ~{extract} \
      ~{sdf_stats} \
      ~{sdf_subset} \
      ~{sdf_subseq} \
      ~{mendelian} \
      ~{vcf_stats} \
      ~{vcf_merge} \
      ~{vcf_filter} \
      ~{vcf_annotate} \
      ~{vcf_subset} \
      ~{vcf_split} \
      ~{vcf_decompose} \
      ~{vcf_eval} \
      ~{sv_decompose} \
      ~{bnd_eval} \
      ~{ped_filter} \
      ~{ped_stats} \
      ~{roc_plot} \
      ~{version} \
      ~{license} \
      ~{help}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "Licensed          GA"
    sdf_two_fast_a: "Licensed          GA"
    sdf_two_fast_q: "Licensed          GA"
    sdf_two_sam: "Licensed          GA"
    fast_q_trim: "Licensed          GA"
    genome_sim: "Licensed          GA"
    cg_sim: "Licensed          GA"
    read_sim: "Licensed          GA"
    pop_sim: "Licensed          GA"
    samples_im: "Licensed          GA"
    child_sim: "Licensed          GA"
    de_novo_sim: "Licensed          GA"
    ped_samples_im: "Licensed          beta"
    sample_replay: "Licensed          GA"
    b_gzip: "Licensed          GA"
    index: "Licensed          GA"
    extract: "Licensed          GA"
    sdf_stats: "Licensed          GA"
    sdf_subset: "Licensed          GA"
    sdf_subseq: "Licensed          GA"
    mendelian: "Licensed          GA"
    vcf_stats: "Licensed          GA"
    vcf_merge: "Licensed          GA"
    vcf_filter: "Licensed          GA"
    vcf_annotate: "Licensed          GA"
    vcf_subset: "Licensed          GA"
    vcf_split: "Licensed          beta"
    vcf_decompose: "Licensed          beta"
    vcf_eval: "Licensed          GA"
    sv_decompose: "Licensed          beta"
    bnd_eval: "Licensed          beta"
    ped_filter: "Licensed          GA"
    ped_stats: "Licensed          GA"
    roc_plot: "Licensed          GA"
    version: "Licensed          GA"
    license: "Licensed          GA"
    help: "Licensed          GA"
  }
  output {
    File out_stdout = stdout()
  }
}