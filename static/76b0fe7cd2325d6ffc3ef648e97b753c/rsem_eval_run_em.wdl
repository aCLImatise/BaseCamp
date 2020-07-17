version 1.0

task RsemEvalRunEm {
  input {
    Boolean? number_user_wants
    Boolean? produce_bam_default
    Boolean? set_it_quiet
    Boolean? sampling
    String? seed
  }
  command <<<
    rsem-eval-run-em \
      ~{true="-p" false="" number_user_wants} \
      ~{true="-b" false="" produce_bam_default} \
      ~{true="-q" false="" set_it_quiet} \
      ~{true="--sampling" false="" sampling} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    number_user_wants: ": number of threads which user wants to use. (default: 1)"
    produce_bam_default: ": produce bam format output file. (default: off)"
    set_it_quiet: ": set it quiet"
    sampling: ": sample each read from its posterior distribution when bam file is generated. (default: off)"
    seed: ": the seed used for the BAM sampling. (default: off)"
  }
}