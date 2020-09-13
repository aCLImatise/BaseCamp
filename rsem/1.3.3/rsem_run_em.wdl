version 1.0

task Rsemrunem {
  input {
    Boolean? number_user_wants
    File? produce_bam_default
    Boolean? set_it_quiet
    File? gibbs_out
    Boolean? sampling
    Int? seed
    Boolean? append_names
  }
  command <<<
    rsem_run_em \
      ~{if (number_user_wants) then "-p" else ""} \
      ~{if (produce_bam_default) then "-b" else ""} \
      ~{if (set_it_quiet) then "-q" else ""} \
      ~{if (gibbs_out) then "--gibbs-out" else ""} \
      ~{if (sampling) then "--sampling" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (append_names) then "--append-names" else ""}
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
  output {
    File out_stdout = stdout()
    File out_produce_bam_default = "${in_produce_bam_default}"
    File out_gibbs_out = "${in_gibbs_out}"
  }
}