version 1.0

task RsemRunEm {
  input {
    Boolean? number_user_wants
    Boolean? produce_bam_default
    Boolean? set_it_quiet
    Boolean? gibbs_out
    Boolean? sampling
    String? seed
    Boolean? append_names
  }
  command <<<
    rsem-run-em \
      ~{true="-p" false="" number_user_wants} \
      ~{true="-b" false="" produce_bam_default} \
      ~{true="-q" false="" set_it_quiet} \
      ~{true="--gibbs-out" false="" gibbs_out} \
      ~{true="--sampling" false="" sampling} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--append-names" false="" append_names}
  >>>
  parameter_meta {
    number_user_wants: ": number of threads which user wants to use. (default: 1)"
    produce_bam_default: ": produce bam format output file. (default: off)"
    set_it_quiet: ": set it quiet"
    gibbs_out: ": generate output file used by Gibbs sampler. (default: off)"
    sampling: ": sample each read from its posterior distribution when BAM file is generated. (default: off)"
    seed: ": the seed used for the BAM sampling. (default: off)"
    append_names: ": append transcript_name/gene_name when available. (default: off)"
  }
}